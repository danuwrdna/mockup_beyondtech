import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/transfer_single/transfer_single_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/status/views/single_transfer_status_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SingleTransferUploadPage extends StatefulWidget {
  const SingleTransferUploadPage({
    super.key,
    this.themeColor,
    this.onConfirm,
    this.refId,
    this.recipientData,
    this.nominal,
    this.bankData,
  });

  final Color? themeColor;
  final Function()? onConfirm;
  final int? nominal;
  final String? refId;
  final RecipientData? recipientData;
  final DestinationBankItem? bankData;

  @override
  State<SingleTransferUploadPage> createState() =>
      _SingleTransferUploadPageState();
}

class _SingleTransferUploadPageState extends State<SingleTransferUploadPage> {
  String? refId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.themeColor ?? ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Complete Upload",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResource.white,
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: BlocBuilder<TransferSingleBloc, TransferSingleState>(
        builder: (context, state) {
          return state.when(
            initial: () => const LoadingDialog(),
            loading: () => const LoadingDialog(),
            success: (data) {
              
              refId = data.data?.refId ?? "";

              final recipientData = RecipientPayloadItemModel(
                bankCode: widget.bankData?.bankCode ?? "",
                amount: widget.nominal ?? 0,
                accountNumber: widget.recipientData?.number ?? "",
                recipientName: widget.recipientData?.name,
              );

              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
                  child: Column(
                    children: [
                      Assets.images.imgPlaceholder2.image(
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Next we will check the correctness of the documents you uploaded",
                        style: TextStyle(fontSize: 13.sp),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorResource.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: ColorResource.black.withOpacity(0.13),
                        offset: const Offset(0, -2),
                      )
                    ],
                  ),
                  child: AppFilledButton(
                    text: "Confirm Upload",
                    onPressed: () {
                      if (widget.onConfirm != null) {
                        widget.onConfirm!();
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SingleTransferStatusPage(
                                refId: refId,
                                recipient: recipientData,
                              );
                            },
                          ),
                          (route) => route.isFirst,
                        );
                      }
                    },
                    radius: 16,
                    backgroundColor: widget.themeColor ?? ColorResource.primary,
                  ),
                ),
              );
            },
            failed: (message) => Text("Failed to load: $message"),
          );
        },
      ),
    );
  }
}
