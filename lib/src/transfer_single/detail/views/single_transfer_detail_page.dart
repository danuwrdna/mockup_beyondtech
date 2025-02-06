import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/detail/transfer_single_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/save_recipient/single_transfer_save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/transfer_single/transfer_single_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_single/review/views/single_transfer_review_page.dart';
import 'package:bpay_mobile/src/transfer_single/status/views/single_transfer_status_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SingleTransferDetailPage extends StatefulWidget {
  const SingleTransferDetailPage({
    super.key,
    required this.nominal,
    required this.note,
    required this.recipient,
    required this.bankData,
  });

  final int nominal;
  final String note;
  final RecipientData recipient;
  final DestinationBankItem bankData;

  @override
  State<SingleTransferDetailPage> createState() =>
      _SingleTransferDetailPageState();
}

class _SingleTransferDetailPageState extends State<SingleTransferDetailPage> {
  bool isSaveRecipient = true;
  bool isBiometricActive = false;
  PaymentMethodItem? paymentMethod;
  TransferSingleDetailResponseData? transactionDetail;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  late RecipientPayloadItemModel destinationPayload;

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

    destinationPayload = RecipientPayloadItemModel(
      bankCode: widget.bankData.bankCode ?? "",
      amount: widget.nominal,
      accountNumber: widget.recipient.number ?? "",
      note: widget.note,
    );
  }

  Future<void> checkBiometricPreferencesAndTransfer(context) async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();

    if (useBiometric) {
      bool authenticated = await biometricHelper.authenticateBiometric(context);

      if (authenticated) {
        transferSingleUsingBiometric();
      } else {
        showSnackBar(context, "Autentikasi Biometrik gagal");
      }
    } else {
      _showPinDialog();
    }
  }

  Future<void> transferSingleUsingBiometric() async {
    context.read<TransferSingleBloc>().add(TransferSingleEvent.transferSingle(
          paymentMethod?.paymentCode ?? "",
          null,
          destinationPayload,
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
                .read<TransferSingleBloc>()
                .add(TransferSingleEvent.transferSingle(
                  paymentMethod?.paymentCode ?? "",
                  pin,
                  destinationPayload,
                  isBiometricActive.toString(),
                ));
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
          "transfer review".capitalizeEach(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
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
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<TransferSingleDetailBloc, TransferSingleDetailState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: (data) {
                  setState(() => transactionDetail = data.data);
                },
                failed: (message) {
                  if (kDebugMode) print(message);
                },
              );
            },
          ),
          BlocListener<TransferSingleBloc, TransferSingleState>(
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
                  if (isSaveRecipient) {
                    context
                        .read<SingleTransferSaveRecipientBloc>()
                        .add(SingleTransferSaveRecipientEvent.saveRecipient(
                          widget.bankData.bankCode ?? "",
                          TransactionType.transferBank,
                          widget.recipient.number ?? "",
                          widget.recipient.name ?? "",
                        ));
                  }
                  Navigator.pop(context);
                  if (paymentMethod?.paymentGroup.toLowerCase() ==
                      PaymentMethod.balance.label.toLowerCase()) {
                    final recipient = RecipientPayloadItemModel(
                      bankCode: widget.bankData.bankCode ?? "",
                      amount: widget.nominal,
                      accountNumber: widget.recipient.number ?? "",
                      recipientName: widget.recipient.name,
                    );
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleTransferStatusPage(
                          refId: data.data?.refId,
                          recipient: recipient,
                        ),
                      ),
                      (route) => route.isFirst,
                    );
                  } else {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleTransferReviewPage(
                          transactionData: data.data,
                        ),
                      ),
                      (route) => route.isFirst,
                    );
                  }
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  if (message.toLowerCase().contains("insufficient")) {
                    showSnackBar(
                      context,
                      "Insufficient balance to complete the transaction.",
                    );
                  } else {
                    showSnackBar(context, message);
                  }
                },
              );
            },
          ),
          BlocListener<SingleTransferSaveRecipientBloc,
              SingleTransferSaveRecipientState>(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.expand(height: 80.h),
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return PaymentMethodBottomSheet(
                              nominal: widget.nominal,
                              onChoose: (chosenPaymentMethod) {
                                setState(() {
                                  paymentMethod = chosenPaymentMethod;
                                });
                                final recipientPayload =
                                    RecipientPayloadItemModel(
                                  bankCode: widget.bankData.bankCode ?? "",
                                  amount: widget.nominal,
                                  accountNumber: widget.recipient.number ?? "",
                                );
                                context.read<TransferSingleDetailBloc>().add(
                                    TransferSingleDetailEvent.getTransferDetail(
                                        chosenPaymentMethod?.paymentCode ?? "",
                                        recipientPayload));
                              },
                            );
                          },
                        );
                      },
                      child: CommonOutlinedContainer(
                        padding: const EdgeInsets.all(16),
                        borderColor: ColorResource.black100.withOpacity(0.35),
                        child: Row(
                          children: [
                            if (paymentMethod == null) ...[
                              Assets.icons.icBank.image(scale: 2),
                              const SizedBox(width: 16),
                              Text(
                                "Choose Payment Method",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue850,
                                ),
                              ),
                            ] else ...[
                              paymentMethod?.paymentGroup ==
                                      PaymentMethod.balance.label
                                  ? Assets.icons.icWalletFilled
                                      .image(scale: 1.5)
                                  : CachedNetworkImage(
                                      imageUrl: paymentMethod?.iconUrl ?? "",
                                      width: 64,
                                    ),
                              const SizedBox(width: 16),
                              if (paymentMethod?.paymentGroup ==
                                  PaymentMethod.balance.label) ...[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      paymentMethod!.paymentGroup,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      convertToIdr(
                                        paymentMethod!.userBalance,
                                        0,
                                      ),
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    )
                                  ],
                                ),
                              ] else ...[
                                Text(
                                  paymentMethod!.paymentGroup,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                  ),
                                ),
                              ]
                            ],
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 32,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    Text(
                      "Transfer Detail",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              CommonShadowedContainer(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                radius: 0,
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
                              createInitial(widget.recipient.name) ?? "",
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
                                widget.recipient.number ?? "",
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
                                  setState(() => isSaveRecipient = value);
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
              Visibility(
                visible: transactionDetail != null,
                child: CommonShadowedContainer(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 20,
                  ),
                  radius: 0,
                  backgroundColor: ColorResource.white,
                  child: Column(
                    children: [
                      StartEndTextRowWidget(
                        startText: "Destination",
                        endText: transactionDetail
                                ?.recipients?.firstOrNull?.bankName ??
                            "",
                      ),
                      const SizedBox(height: 12),
                      StartEndTextRowWidget(
                        startText: "Transfer Nominal",
                        endText: convertToIdr(
                          transactionDetail?.totalAmount ?? 0,
                          0,
                        ),
                      ),
                      const SizedBox(height: 12),
                      StartEndTextRowWidget(
                        startText: "Admin Fee",
                        endText: convertToIdr(
                          transactionDetail?.totalFee ?? 0,
                          0,
                        ),
                      ),
                      if (widget.note.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        StartEndTextRowWidget(
                          startText: "Note",
                          endText: widget.note,
                        ),
                      ],
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
                            (transactionDetail?.totalAmount ?? 0) +
                                (transactionDetail?.totalFee ?? 0),
                            0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
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
          text: "Continue",
          onPressed: paymentMethod != null
              ? () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return ConfirmationDialog(
                        message: "Is The Data You Entered Correct?",
                        primaryButtonText: "Yes, Continue",
                        primaryButtonPressed: () {
                          Navigator.pop(context);
                          if (paymentMethod?.paymentGroup ==
                              PaymentMethod.balance.label) {
                            checkBiometricPreferencesAndTransfer(context);
                          } else {
                            final destinationPayload =
                                RecipientPayloadItemModel(
                              bankCode: widget.bankData.bankCode ?? "",
                              amount: widget.nominal,
                              accountNumber: widget.recipient.number ?? "",
                            );
                            context
                                .read<TransferSingleBloc>()
                                .add(TransferSingleEvent.transferSingle(
                                  paymentMethod?.paymentCode ?? "",
                                  null,
                                  destinationPayload,
                                  isBiometricActive.toString(),
                                ));
                          }
                        },
                        secondaryButtonText: "No, Go Back",
                        secondaryButtonPressed: () => Navigator.pop(context),
                      );
                    },
                  );
                }
              : null,
          radius: 16,
        ),
      ),
    );
  }
}
