import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/transaction/remittance_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/detail/remittance_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/review/views/remittance_review_page.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/views/remittance_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class RemittanceSummaryBottomSheet extends StatefulWidget {
  const RemittanceSummaryBottomSheet({
    super.key,
    required this.fieldsControllers,
    required this.selectedService,
    required this.destinationCountryCode,
    required this.amount,
    required this.purposeOfTransaction,
    required this.sourceOfFunds,
    required this.paymentMethod,
    required this.detailData,
    required this.senderCountryDetail,
    required this.receiverCountryDetail,
  });

  final Map<String, TextEditingController>? fieldsControllers;
  final Map<String, dynamic>? selectedService;
  final String? destinationCountryCode;
  final int amount;
  final String purposeOfTransaction;
  final String sourceOfFunds;
  final PaymentMethodItem paymentMethod;
  final RemittanceDetailData detailData;
  final CountryDetailModel senderCountryDetail;
  final CountryDetailModel receiverCountryDetail;

  @override
  State<RemittanceSummaryBottomSheet> createState() =>
      _RemittanceSummaryBottomSheetState();
}

class _RemittanceSummaryBottomSheetState
    extends State<RemittanceSummaryBottomSheet> {
  bool isBiometricActive = false;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  Future<void> _loadBiometricStatus() async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();
    setState(() {
      isBiometricActive = useBiometric;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadBiometricStatus();
  }

  Future<void> checkBiometricPreferencesAndTransfer(context) async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();

    if (useBiometric) {
      bool authenticated = await biometricHelper.authenticateBiometric(context);

      if (authenticated) {
        transferSingleusingBiometric();
      } else {
        showSnackBar(context, "Autentikasi Biometrik gagal");
      }
    } else {
      _showPinDialog();
    }
  }

  Future<void> transferSingleusingBiometric() async {
    context
        .read<RemittanceTransactionBloc>()
        .add(RemittanceTransactionEvent.remittanceTransaction(
          widget.senderCountryDetail,
          widget.receiverCountryDetail,
          widget.amount,
          widget.selectedService?["service_option_code"] ?? "",
          widget.selectedService?["service_option_routing_code"] ?? "",
          widget.selectedService ?? {},
          widget.fieldsControllers ?? {},
          widget.purposeOfTransaction,
          widget.sourceOfFunds,
          widget.paymentMethod.paymentCode,
          null,
          isBiometricActive.toString(),
        ));
  }

  void _showPinDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterPinDialog(
          onPinSuccess: (pin) {
            context
                .read<RemittanceTransactionBloc>()
                .add(RemittanceTransactionEvent.remittanceTransaction(
                  widget.senderCountryDetail,
                  widget.receiverCountryDetail,
                  widget.amount,
                  widget.selectedService?["service_option_code"] ?? "",
                  widget.selectedService?["service_option_routing_code"] ?? "",
                  widget.selectedService ?? {},
                  widget.fieldsControllers ?? {},
                  widget.purposeOfTransaction,
                  widget.sourceOfFunds,
                  widget.paymentMethod.paymentCode,
                  pin,
                  isBiometricActive.toString(),
                ));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Make sure the following data is correct",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                Divider(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.2),
                ),
                const SizedBox(height: 20),
                Text(
                  "Recipient",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: ColorResource.remittance.withOpacity(0.08),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          "${widget.fieldsControllers?["receiver.name.firstName"]?.text.trim()} ${widget.fieldsControllers?["receiver.name.lastName"]?.text.trim()}",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CountryFlag.fromCountryCode(
                            widget.receiverCountryDetail.countryCodeIso2,
                            height: 17,
                            width: 24,
                            shape: const RoundedRectangle(2),
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
                                    style: TextStyle(fontSize: 11.sp),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "${widget.fieldsControllers?["targetAccount.accountNumber"]?.text.trim()}",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeightResource.bold,
                                    ),
                                  ),
                                ] else ...[
                                  Text(
                                    "${widget.selectedService?["service_option_name"]}",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeightResource.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "${widget.fieldsControllers?["targetAccount.homeAddress"]?.text.trim()}",
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                StartEndTextRowWidget(
                  startText: "Nominal received",
                  endText:
                      "${convertToCurrency(widget.detailData.receiveAmount.nominal, 2)} ${widget.receiverCountryDetail.currencyCode}",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Kurs",
                  endText:
                      "1 ${widget.receiverCountryDetail.currencyCode} = ${convertToCurrency(widget.detailData.rate.fxRemittanceDetailDataRate, 2)} ${widget.senderCountryDetail.currencyCode}",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Nominal sent",
                  endText:
                      "${convertToCurrency(widget.detailData.sendAmount.nominal, 2)} ${widget.senderCountryDetail.currencyCode}",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Transfer Fee",
                  endText:
                      "${convertToCurrency(widget.detailData.fees.totalFee, 2)} ${widget.senderCountryDetail.currencyCode}",
                  endTextDecoration: widget.detailData.fees.isAdminFree
                      ? TextDecoration.lineThrough
                      : null,
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorResource.blue300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: StartEndTextRowWidget(
                    startText: "Total Payment",
                    endText:
                        "${convertToCurrency(widget.detailData.sendAmount.nominal + widget.detailData.fees.totalFee, 2)} ${widget.senderCountryDetail.currencyCode}",
                    textColor: ColorResource.blue900,
                  ),
                ),
                // const SizedBox(height: 20),
                // Divider(
                //   height: 1,
                //   color: ColorResource.black100.withOpacity(0.2),
                // ),
                // const SizedBox(height: 20),
                // Text(
                //   "Payment today before 13.00 WIB, will be sent on Friday, March 14, 2024",
                //   style: TextStyle(
                //     fontSize: 10.sp,
                //     color: ColorResource.red,
                //   ),
                // ),
                const SizedBox(height: 40),
                BlocListener<RemittanceTransactionBloc,
                    RemittanceTransactionState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      loading: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => const LoadingDialog(),
                        );
                      },
                      success: (data) {
                        Navigator.pop(context);
                        if (data.data.paymentCode.toLowerCase() ==
                            PaymentMethod.balance.label.toLowerCase()) {
                          Navigator.pop(context);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RemittanceProcessingPage(
                                  transactionData: data.data,
                                  fieldsControllers: widget.fieldsControllers,
                                  selectedService: widget.selectedService,
                                  senderCountryDetail:
                                      widget.senderCountryDetail,
                                  receiverCountryDetail:
                                      widget.receiverCountryDetail,
                                );
                              },
                            ),
                            (route) => route.isFirst,
                          );
                        } else {
                          Navigator.pop(context);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RemittanceReviewPage(
                                  transactionData: data.data,
                                  fieldsControllers: widget.fieldsControllers,
                                  senderCountryDetail:
                                      widget.senderCountryDetail,
                                  receiverCountryDetail:
                                      widget.receiverCountryDetail,
                                  paymentMethod: widget.paymentMethod,
                                );
                              },
                            ),
                            (route) => route.isFirst,
                          );
                        }
                      },
                      failed: (message) {
                        Navigator.pop(context);
                        showSnackBar(context, message);
                      },
                    );
                  },
                  child: SizedBox(
                    width: 100.w,
                    child: AppFilledButton(
                      text: "Confirm",
                      backgroundColor: ColorResource.remittance,
                      radius: 8,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return ConfirmationDialog(
                              message: "Is The Data You Entered Correct?",
                              primaryButtonText: "Yes, Continue",
                              primaryButtonPressed: () {
                                Navigator.pop(context);
                                if (widget.paymentMethod.paymentGroup ==
                                    PaymentMethod.balance.label) {
                                  checkBiometricPreferencesAndTransfer(context);
                                } else {
                                  context.read<RemittanceTransactionBloc>().add(
                                          RemittanceTransactionEvent
                                              .remittanceTransaction(
                                        widget.senderCountryDetail,
                                        widget.receiverCountryDetail,
                                        widget.amount,
                                        widget.selectedService?[
                                                "service_option_code"] ??
                                            "",
                                        widget.selectedService?[
                                                "service_option_routing_code"] ??
                                            "",
                                        widget.selectedService ?? {},
                                        widget.fieldsControllers ?? {},
                                        widget.purposeOfTransaction,
                                        widget.sourceOfFunds,
                                        widget.paymentMethod.paymentCode,
                                        null,
                                        isBiometricActive.toString(),
                                      ));
                                }
                              },
                              secondaryButtonText: "No, Go Back",
                              secondaryButtonPressed: () =>
                                  Navigator.pop(context),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
    );
  }
}
