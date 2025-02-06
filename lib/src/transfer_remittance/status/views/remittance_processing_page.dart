import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/transaction/remittance_transaction_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/bloc/remittance_status_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/success/views/remittance_success_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class RemittanceProcessingPage extends StatefulWidget {
  const RemittanceProcessingPage({
    super.key,
    required this.transactionData,
    required this.fieldsControllers,
    required this.selectedService,
    required this.senderCountryDetail,
    required this.receiverCountryDetail,
  });

  final RemittanceTransactionData transactionData;
  final Map<String, TextEditingController>? fieldsControllers;
  final Map<String, dynamic>? selectedService;
  final CountryDetailModel senderCountryDetail;
  final CountryDetailModel receiverCountryDetail;

  @override
  State<RemittanceProcessingPage> createState() =>
      _RemittanceProcessingPageState();
}

class _RemittanceProcessingPageState extends State<RemittanceProcessingPage> {
  @override
  void initState() {
    startWaitingTransaction(context);
    super.initState();
  }

  void startWaitingTransaction(
    BuildContext context, {
    bool isInitial = true,
  }) async {
    if (isInitial) {
      await Future.delayed(const Duration(seconds: 5));
      if (context.mounted) {
        context
            .read<RemittanceStatusBloc>()
            .add(RemittanceStatusEvent.getTransactionStatus(
              widget.transactionData.trxId,
            ));
      }
    } else {
      await Future.delayed(const Duration(seconds: 30));
      if (context.mounted) {
        context
            .read<RemittanceStatusBloc>()
            .add(RemittanceStatusEvent.getTransactionStatus(
              widget.transactionData.trxId,
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: BlocListener<RemittanceStatusBloc, RemittanceStatusState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (data) {
              if (data.data.statusTransaction == TransactionStatus.paid.value ||
                  data.data.statusTransaction ==
                      TransactionStatus.success.value) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RemittanceSuccessPage(
                        transactionData: widget.transactionData,
                        fieldsControllers: widget.fieldsControllers,
                        senderCountryDetail: widget.senderCountryDetail,
                        receiverCountryDetail: widget.receiverCountryDetail,
                        transactionDetailData: data.data,
                      );
                    },
                  ),
                  (route) => route.isFirst,
                );
              } else {
                startWaitingTransaction(context, isInitial: false);
              }
            },
            failed: (message) {
              showSnackBar(context, message);
            },
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
                      "E-Wallet",
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
                            widget.transactionData.trxId,
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
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color:
                                      ColorResource.blue850.withOpacity(0.28),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Assets.icons.icRemittancePng
                                      .image(scale: 2),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if ((widget
                                                .fieldsControllers?[
                                                    "targetAccount.bankName"]
                                                ?.text
                                                .trim()
                                                .isNotEmpty ??
                                            false) &&
                                        (widget
                                                .fieldsControllers?[
                                                    "targetAccount.accountNumber"]
                                                ?.text
                                                .trim()
                                                .isNotEmpty ??
                                            false)) ...[
                                      Text(
                                        "${widget.fieldsControllers?["targetAccount.bankName"]?.text.trim()}",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "${widget.fieldsControllers?["targetAccount.accountNumber"]?.text.trim()}",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ] else ...[
                                      Text(
                                        "${widget.selectedService?["service_option_name"]}",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "${widget.fieldsControllers?["targetAccount.homeAddress"]?.text.trim()}",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                convertToIdr(
                                  widget.transactionData.totalPayment.amount,
                                  0,
                                ),
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
