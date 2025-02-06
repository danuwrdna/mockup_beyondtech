import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/save_recipient/multi_transfer_save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/transfer_multi/transfer_multi_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/review/views/multi_transfer_review_page.dart';
import 'package:bpay_mobile/src/transfer_multi/status/views/multi_transfer_status_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MultiTransferSummaryPage extends StatefulWidget {
  const MultiTransferSummaryPage({
    super.key,
    this.transactionData,
    this.paymentMethod,
    required this.destinations,
  });

  final TransferSingleDetailResponseData? transactionData;
  final PaymentMethodItem? paymentMethod;
  final List<RecipientPayloadItemModel> destinations;

  @override
  State<MultiTransferSummaryPage> createState() =>
      _MultiTransferSummaryPageState();
}

class _MultiTransferSummaryPageState extends State<MultiTransferSummaryPage> {
  late List<String?> listOfUniqueDestination;
  late List<String?> listOfAccountNumber;
  bool isBiometricActive = false;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  @override
  void initState() {
    listOfUniqueDestination = widget.transactionData?.recipients
            ?.map((e) => e.bankName)
            .toSet()
            .toList() ??
        [];
    listOfAccountNumber = widget.transactionData?.recipients
            ?.map((e) => e.accountNumber)
            .toList() ??
        [];
    super.initState();
    _loadBiometricStatus();
  }

  Future<void> _loadBiometricStatus() async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();
    setState(() {
      isBiometricActive = useBiometric;
    });
  }

  Future<void> checkBiometricPreferencesAndTransfer(context) async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();

    if (useBiometric) {
      bool authenticated = await biometricHelper.authenticateBiometric(context);

      if (authenticated) {
        transferBalanceUsingBiometric();
      } else {
        showSnackBar(context, "Autentikasi Biometrik gagal");
      }
    } else {
      _showPinDialog();
    }
  }

  Future<void> transferBalanceUsingBiometric() async {
    context.read<TransferMultiBloc>().add(
          TransferMultiEvent.transferMulti(
            widget.paymentMethod?.paymentCode ?? "",
            null,
            widget.destinations,
            isBiometricActive.toString(),
          ),
        );
  }

  void _showPinDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterPinDialog(
          onPinSuccess: (pin) {
            context.read<TransferMultiBloc>().add(
                  TransferMultiEvent.transferMulti(
                    widget.paymentMethod?.paymentCode ?? "",
                    pin,
                    widget.destinations,
                    isBiometricActive.toString(),
                  ),
                );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "Transaction Summary".capitalizeEach(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Transaction Detail",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "(${widget.transactionData?.recipients?.length} Destination${(widget.transactionData?.recipients?.length ?? 0) > 1 ? "s" : ""})",
                  style: TextStyle(fontSize: 10.sp),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CommonShadowedContainer(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              backgroundColor: ColorResource.white,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Destination", style: TextStyle(fontSize: 11.sp)),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          for (int i = 0;
                              i < listOfUniqueDestination.length;
                              i++) ...[
                            Text(
                              "\u2022  ${listOfUniqueDestination[i]}",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account Number", style: TextStyle(fontSize: 11.sp)),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          for (int i = 0;
                              i < listOfAccountNumber.length;
                              i++) ...[
                            Text(
                              "\u2022  ${listOfAccountNumber[i]}",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  StartEndTextRowWidget(
                    startText: "Payment Method",
                    endText: widget.transactionData?.paymentMethod?.name ?? "",
                  ),
                  const SizedBox(height: 14),
                  StartEndTextRowWidget(
                    startText: "Transfer Nominal",
                    endText: convertToIdr(
                      widget.transactionData?.totalAmount ?? 0,
                      0,
                    ),
                  ),
                  const SizedBox(height: 14),
                  StartEndTextRowWidget(
                    startText: "Admin Fee",
                    endText: convertToIdr(
                      widget.transactionData?.totalFee ?? 0,
                      0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: ColorResource.red.withOpacity(0.24),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: StartEndTextRowWidget(
                      startText: "Total Nominal",
                      endText: convertToIdr(
                        (widget.transactionData?.totalAmount ?? 0) +
                            (widget.transactionData?.totalFee ?? 0),
                        0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorResource.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: ColorResource.black.withOpacity(0.13),
              offset: const Offset(0, -2),
            )
          ],
        ),
        child: MultiBlocListener(
          listeners: [
            BlocListener<TransferMultiBloc, TransferMultiState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  success: (data) {
                    for (var recipient in widget.destinations) {
                      if (recipient.isSave) {
                        context
                            .read<MultiTransferSaveRecipientBloc>()
                            .add(MultiTransferSaveRecipientEvent.saveRecipient(
                              recipient.bankCode,
                              recipient.accountNumber,
                              recipient.recipientName ?? "",
                            ));
                      }
                    }
                    if (widget.paymentMethod?.paymentGroup.toLowerCase() ==
                        PaymentMethod.balance.label.toLowerCase()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MultiTransferStatusPage(
                            refId: data.data?.refId,
                            destinations: widget.destinations,
                            paymentMethod: widget.paymentMethod,
                          ),
                        ),
                        (route) => route.isFirst,
                      );
                    } else {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MultiTransferReviewPage(
                            transactionData: data.data,
                          ),
                        ),
                        (route) => route.isFirst,
                      );
                    }
                  },
                  failed: (message) {
                    if (kDebugMode) print(message);
                    showSnackBar(context, message);
                  },
                );
              },
            ),
            BlocListener<MultiTransferSaveRecipientBloc,
                MultiTransferSaveRecipientState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  success: (data) {
                    if (kDebugMode) print(data.message);
                  },
                  failed: (message) {
                    if (kDebugMode) print(message);
                  },
                );
              },
            ),
          ],
          child: SizedBox(
            width: 100.w,
            child: AppFilledButton(
              text: "Continue".capitalizeEach(),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmationDialog(
                      message: "Is The Data You Entered Correct?",
                      primaryButtonText: "Yes, Continue",
                      primaryButtonPressed: () {
                        Navigator.pop(context);
                        if (widget.paymentMethod?.paymentGroup ==
                            PaymentMethod.balance.label) {
                          checkBiometricPreferencesAndTransfer(context);
                        } else {
                          context
                              .read<TransferMultiBloc>()
                              .add(TransferMultiEvent.transferMulti(
                                widget.paymentMethod?.paymentCode ?? "",
                                null,
                                widget.destinations,
                                isBiometricActive.toString()
                              ));
                        }
                      },
                      secondaryButtonText: "No, Go Back",
                      secondaryButtonPressed: () => Navigator.pop(context),
                    );
                  },
                );
              },
              radius: 8,
              fontSize: 12.sp,
            ),
          ),
        ),
      ),
    );
  }
}
