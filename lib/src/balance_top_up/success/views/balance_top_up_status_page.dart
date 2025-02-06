import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/src/transfer_single/status/bloc/status/single_transfer_status_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/status/model/detail_history_transfer_single_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/status/views/single_transfer_success_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BalanceTopUpStatusPage extends StatefulWidget {
  const BalanceTopUpStatusPage({
    super.key,
    this.refId,
    this.recipient,
  });

  final String? refId;
  final RecipientPayloadItemModel? recipient;

  @override
  State<BalanceTopUpStatusPage> createState() =>
      _BalanceTopUpStatusPageState();
}

class _BalanceTopUpStatusPageState extends State<BalanceTopUpStatusPage> {
  bool isFirstCall = true;

  @override
  void initState() {
    startWaitingTransaction(context);
    super.initState();
  }

  void startWaitingTransaction(BuildContext context) async {
    if (isFirstCall) {
      await Future.delayed(const Duration(seconds: 5));
      setState(() => isFirstCall = false);
    } else {
      await Future.delayed(const Duration(seconds: 30));
    }
    if (context.mounted && widget.refId != null) {
      context.read<SingleTransferStatusBloc>().add(
          SingleTransferStatusEvent.getTransactionStatus(widget.refId ?? ""));
    }
  }

  @override
  Widget build(BuildContext context) {

      
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: BlocListener<SingleTransferStatusBloc, SingleTransferStatusState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (data) {
              if (data.data?[0].statusTransaction ==
                      TransactionStatus.paid.value ||
                  data.data?[0].statusTransaction ==
                      TransactionStatus.success.value) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingleTransferSuccessPage(
                      transactionId: "${data.data![0].transactionId}",
                      lastDate: data.data![0].createdAt!,
                    ),
                  ),
                  (route) => route.isFirst,
                );
              } else {
                startWaitingTransaction(context);
              }
            },
            failed: (message) {
              if (kDebugMode) {
                print(message);
              }
            },
            getBankTransferTransactionHistorySuccess:
                (DetailHistoryTransferSingleResponse data) {},
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
                  color: ColorResource.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Transaction Status",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () => Navigator.pop(context),
                                child: const Icon(Icons.close, size: 30),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Assets.images.imgWaitingTransaction.image(scale: 2),
                      const SizedBox(height: 28),
                      Text(
                        "we are processing your transaction".capitalizeEach(),
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      "Bank Account Transfer",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CommonOutlinedContainer(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: ColorResource.white,
                      borderColor: ColorResource.black100.withOpacity(0.5),
                      child: Column(
                        children: [
                          Text(
                            widget.refId ?? "",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.blue850,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResource.red,
                                ),
                                child: Center(
                                  child: Text(
                                    createInitial(
                                            widget.recipient?.recipientName) ??
                                        "",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      color: ColorResource.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.recipient?.recipientName ?? "-",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      widget.recipient?.accountNumber ?? "-",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                convertToIdr(widget.recipient?.amount ?? 0, 0),
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    CommonShadowedContainer(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: ColorResource.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Did you transfer using the EDC Machine or Cash Deposit?",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                          const SizedBox(width: 16),
                          AppOutlinedButton(
                            radius: 24,
                            borderColor: ColorResource.blue850,
                            text: "See Detail",
                            fontSize: 10.sp,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 100.w,
                      child: AppFilledButton(
                        text: "chat us for help".capitalizeEach(),
                        leading: const Icon(
                          Icons.help_outline_rounded,
                          color: ColorResource.white,
                        ),
                        onPressed: () {},
                        backgroundColor: ColorResource.lightBlue,
                        radius: 8,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
