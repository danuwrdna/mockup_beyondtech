import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/bloc/save_recipient/bloc/save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/bloc/transfer_balance/bloc/transfer_balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/status/views/balance_transfer_status_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/detail/transfer_single_detail_bloc.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class BalanceTransferDetailPage extends StatefulWidget {
  const BalanceTransferDetailPage({
    super.key,
    required this.recipient,
    required this.phoneNumber,
    required this.nominal,
    required this.note,
  });

  final int nominal;
  final String note;
  final RecipientData recipient;
  final String phoneNumber;

  @override
  State<BalanceTransferDetailPage> createState() =>
      _BalanceTransferDetailPageState();
}

class _BalanceTransferDetailPageState extends State<BalanceTransferDetailPage> {
  bool isSaveRecipient = true;
  bool isBiometricActive = false;
  TransferSingleDetailResponseData? transactionDetail;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  @override
  void initState() {
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
    context.read<TransferBalanceBloc>().add(
          TransferBalanceEvent.transferBalance(
            widget.nominal,
            null,
            widget.note,
            widget.recipient.number,
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
            context.read<TransferBalanceBloc>().add(
                  TransferBalanceEvent.transferBalance(
                    widget.nominal,
                    pin,
                    widget.note,
                    widget.recipient.number,
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
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "transfer to balance".capitalizeEach(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) {
              return;
            }
            showDialog(
              context: context,
              builder: (context) {
                return ConfirmationDialog(
                  message: "Are You Sure You Will Cancel This Process?",
                  primaryButtonText: "Yes, Go Back",
                  primaryButtonPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  secondaryButtonText: "No, Continue",
                  secondaryButtonPressed: () => Navigator.pop(context),
                );
              },
            );
          },
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return ConfirmationDialog(
                    message: "Are You Sure You Will Cancel This Process?",
                    primaryButtonText: "Yes, Go Back",
                    primaryButtonPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    secondaryButtonText: "No, Continue",
                    secondaryButtonPressed: () => Navigator.pop(context),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: ColorResource.white,
            ),
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<TransferSingleDetailBloc, TransferSingleDetailState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  loading: () {},
                  success: (data) {
                    setState(() {
                      transactionDetail = data.data;
                    });
                  },
                  failed: (message) {
                    if (kDebugMode) print(message);
                  });
            },
          ),
          BlocListener<TransferBalanceBloc, TransferBalanceState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => const LoadingDialog());
                },
                success: (data) {
                  if (isSaveRecipient) {
                    context
                        .read<SaveRecipientBloc>()
                        .add(SaveRecipientEvent.saveBalanceRecipient(
                          TransactionType.transferBeyond,
                          widget.recipient.number ?? "",
                          widget.recipient.name ?? "",
                        ));
                  }
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BalanceTransferStatusPage(
                      recipient: widget.recipient,
                      phoneNumber: widget.phoneNumber,
                      nominal: widget.nominal,
                      note: widget.note,
                    );
                  }));
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  showSnackBar(context, message);
                },
              );
            },
          ),
          BlocListener<SaveRecipientBloc, SaveRecipientState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  loading: () {},
                  success: (data) {
                    if (kDebugMode) print(data.message);
                  },
                  failed: (message) {
                    if (kDebugMode) print(message);
                  });
            },
            child: Container(),
          )
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Transfer Detail",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CommonShadowedContainer(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 16,
              ),
              radius: 8,
              backgroundColor: ColorResource.white,
              child: Column(
                children: [
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
                            "HT",
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
                              widget.recipient.name ?? "",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "xxxxxxxxx",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorResource.red.withOpacity(0.24),
                      ),
                      color: ColorResource.red.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Save Recipient Accounts",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: ColorResource.red,
                          ),
                        ),
                        SizedBox(
                          height: 26,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Switch(
                              activeTrackColor: ColorResource.red,
                              trackOutlineColor: !isSaveRecipient
                                  ? const WidgetStatePropertyAll(
                                      ColorResource.grey400,
                                    )
                                  : const WidgetStatePropertyAll(
                                      ColorResource.red,
                                    ),
                              inactiveThumbColor: ColorResource.grey400,
                              value: isSaveRecipient,
                              onChanged: (value) {
                                setState(() {
                                  isSaveRecipient = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            CommonShadowedContainer(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20,
              ),
              radius: 0,
              backgroundColor: ColorResource.white,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: ColorResource.red.withOpacity(0.24),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: StartEndTextRowWidget(
                  startText: "Total Nominal",
                  endText: convertToIdr(widget.nominal, 0),
                ),
              ),
            )
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
        child: AppFilledButton(
          text: "Confirm",
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return ConfirmationDialog(
                  message: "Is The Data You Entered Correct?",
                  primaryButtonText: "Yes, Continue",
                  primaryButtonPressed: () {
                    Navigator.pop(context);
                    checkBiometricPreferencesAndTransfer(context);
                  },
                  secondaryButtonText: "No, Go Back",
                  secondaryButtonPressed: () => Navigator.pop(context),
                );
              },
            );
          },
          radius: 16,
        ),
      ),
    );
  }
}
