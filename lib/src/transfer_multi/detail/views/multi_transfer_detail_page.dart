import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/views/multi_transfer_bank_destination_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/detail/multi_transfer_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/nominal/views/multi_transfer_nominal_page.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/views/multi_transfer_summary_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MultiTransferDetailPage extends StatefulWidget {
  const MultiTransferDetailPage({super.key, required this.firstRecipient});

  final RecipientPayloadItemModel firstRecipient;

  @override
  State<MultiTransferDetailPage> createState() =>
      _MultiTransferDetailPageState();
}

class _MultiTransferDetailPageState extends State<MultiTransferDetailPage> {
  List<RecipientPayloadItemModel> recipients = [];
  PaymentMethodItem? paymentMethod;

  @override
  void initState() {
    recipients.add(widget.firstRecipient);
    super.initState();
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
          onPopInvokedWithResult: (didPop, result) {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              child: Text(
                "Transaction Detail",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recipients.length,
              itemBuilder: (context, index) {
                return MultiTransferTransactionItem(
                  recipientData: recipients[index],
                  onRemove: () {
                    if (recipients.length <= 1) {
                      showSnackBar(
                        context,
                        "You must have at least one recipient.",
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return ConfirmationDialog(
                            message:
                                "Are you sure you want to remove this recipient?",
                            primaryButtonText: "No",
                            primaryButtonPressed: () => Navigator.pop(context),
                            secondaryButtonText: "Yes",
                            secondaryButtonPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                recipients.removeAt(index);
                              });
                            },
                          );
                        },
                      );
                    }
                  },
                  onSaveChanged: (value) {
                    setState(() {
                      recipients[index].isSave = value;
                    });
                  },
                );
              },
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100.w,
              child: AppOutlinedButton(
                text: "+ add another destination".capitalizeEach(),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return MultiTransferBankDestinationBottomSheet(
                        onConfirm: (bankData, recipient) async {
                          final recipientPayload = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MultiTransferNominalPage(
                                  recipient: recipient,
                                  bankData: bankData,
                                  isAddDestination: true,
                                );
                              },
                            ),
                          );
                          setState(() {
                            recipients.add(recipientPayload);
                          });
                        },
                      );
                    },
                  );
                },
                radius: 8,
                fontSize: 12.sp,
              ),
            ),
            const SizedBox(height: 12),
            BlocListener<MultiTransferDetailBloc, MultiTransferDetailState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  success: (data) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MultiTransferSummaryPage(
                          transactionData: data.data,
                          paymentMethod: paymentMethod,
                          destinations: recipients,
                        ),
                      ),
                    );
                  },
                  failed: (message) {
                    if (kDebugMode) print(message);
                  },
                );
              },
              child: SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "choose payment method".capitalizeEach(),
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints.expand(height: 80.h),
                      showDragHandle: true,
                      context: context,
                      builder: (context) {
                        return PaymentMethodBottomSheet(
                          nominal: recipients.fold(
                            0,
                            (sum, item) => sum + item.amount,
                          ),
                          onChoose: (chosenPaymentMethod) {
                            setState(() => paymentMethod = chosenPaymentMethod);
                            context
                                .read<MultiTransferDetailBloc>()
                                .add(MultiTransferDetailEvent.getTransferDetail(
                                  chosenPaymentMethod?.paymentCode ?? "",
                                  recipients,
                                ));
                          },
                        );
                      },
                    );
                  },
                  radius: 8,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MultiTransferTransactionItem extends StatefulWidget {
  const MultiTransferTransactionItem({
    super.key,
    required this.onRemove,
    required this.onSaveChanged,
    required this.recipientData,
  });

  final Function() onRemove;
  final Function(bool value) onSaveChanged;
  final RecipientPayloadItemModel recipientData;

  @override
  State<MultiTransferTransactionItem> createState() =>
      _MultiTransferTransactionItemState();
}

class _MultiTransferTransactionItemState
    extends State<MultiTransferTransactionItem> {
  bool isSaveRecipient = false;
  bool showDetail = false;

  @override
  void initState() {
    isSaveRecipient = widget.recipientData.isSave;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorResource.red,
                    ),
                    child: Center(
                      child: Text(
                        createInitial(widget.recipientData.recipientName) ?? "",
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
                          widget.recipientData.recipientName ?? "",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.recipientData.accountNumber,
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
                    convertToIdr(widget.recipientData.amount, 0),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightResource.semiBold,
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
                            widget.onSaveChanged(value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: InkWell(
                  onTap: () => widget.onRemove(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Remove",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.red,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.delete_outline,
                        color: ColorResource.red,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
