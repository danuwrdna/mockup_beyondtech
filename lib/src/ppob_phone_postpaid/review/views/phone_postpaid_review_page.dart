import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_qris_detail_page.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/status/views/phone_postpaid_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/src/transfer_single/review/views/bank_transfer_instruction_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_single/review/views/choose_upload_method_bottom_sheet.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class PhonePostpaidReviewPage extends StatelessWidget {
  const PhonePostpaidReviewPage({
    super.key,
    this.paymentMethod,
    required this.costumerName,
    required this.costumerId,
    required this.billingAmount,
    required this.serviceFee,
    required this.uniqueCode,
    required this.vaCode,
    required this.paymentMethodName,
    required this.expriredAt,
    required this.serviceName,
    required this.transactionId,
    required this.paymentData,
  });

  final PaymentMethodItem? paymentMethod;
  final String costumerName;
  final String costumerId;
  final num billingAmount;
  final num serviceFee;
  final String serviceName;
  final String transactionId;
  final int uniqueCode;
  final String vaCode;
  final String paymentMethodName;
  final int expriredAt;
  final PpobTransactionData paymentData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "transaction review".capitalizeEach(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Transaction Detail",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 20),
              CommonShadowedContainer(
                backgroundColor: ColorResource.white,
                radius: 8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Finish Before ${DateFormat("dd MMM yyyy, HH:mm").format(DateTime.fromMillisecondsSinceEpoch(expriredAt * 1000))} WIB",
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeightResource.medium,
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6.5,
                              horizontal: 11,
                            ),
                            decoration: BoxDecoration(
                              color: ColorResource.red.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: CountdownWidget(
                              time: DateTime.fromMillisecondsSinceEpoch(
                                expriredAt * 1000,
                              ),
                              textStyle: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeightResource.bold,
                                color: ColorResource.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    AppDashedLine(
                      height: 1,
                      color: ColorResource.black100.withOpacity(0.32),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 64,
                                width: 64,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: ColorResource.blue100,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: paymentMethod == null
                                    ? Assets.icons.icBank.image(scale: 2)
                                    : paymentMethod?.paymentGroup ==
                                            PaymentMethod.balance.label
                                        ? Assets.icons.icWalletFilled
                                            .image(scale: 1.5)
                                        : CachedNetworkImage(
                                            imageUrl:
                                                paymentMethod?.iconUrl ?? "",
                                            width: 64,
                                          ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                paymentMethod?.paymentName ?? "",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: ColorResource.grey100,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (paymentMethod?.paymentCode.toUpperCase() ==
                                    PaymentMethod.qris.label) ...[
                                  Row(
                                    children: [
                                      Assets.icons.icQris.image(scale: 2),
                                      const SizedBox(width: 16),
                                      Text(
                                        paymentMethod?.paymentCode ?? "",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 16),
                                  AppFilledButton(
                                    text: "See QR Code",
                                    fontSize: 11.sp,
                                    radius: 20,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return PaymentQrisDetailPage(
                                              backgroundColor:
                                                  ColorResource.blue850,
                                              totalPayment: billingAmount +
                                                  (paymentMethod?.totalFee ??
                                                      0) +
                                                  serviceFee +
                                                  uniqueCode,
                                              qrContent: paymentData.paymentChannel.qrContent,
                                              qrImage: paymentData.paymentChannel.qrImage,
                                              expiredAt: expriredAt,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ] else ...[
                                  Expanded(
                                    child: Text(
                                      vaCode,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  AppOutlinedButton(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 17.5,
                                    ),
                                    text: "Copy",
                                    fontSize: 12.sp,
                                    radius: 20,
                                    onPressed: () {
                                      Clipboard.setData(
                                        ClipboardData(
                                          text: vaCode,
                                        ),
                                      ).then(
                                        (value) {
                                          if (context.mounted) {
                                            showSnackBar(context, "Copied!");
                                          }
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Total Payment",
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: ColorResource.grey100,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  convertToIdr(
                                      billingAmount +
                                          (paymentMethod?.totalFee ?? 0) +
                                          serviceFee +
                                          uniqueCode,
                                      0),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                  ),
                                ),
                                AppOutlinedButton(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 17.5,
                                  ),
                                  text: "Copy",
                                  fontSize: 12.sp,
                                  radius: 20,
                                  onPressed: () {
                                    Clipboard.setData(
                                      ClipboardData(
                                        text: (billingAmount +
                                                (paymentMethod?.totalFee ?? 0) +
                                                serviceFee +
                                                uniqueCode)
                                            .toString(),
                                      ),
                                    ).then(
                                      (value) {
                                        if (context.mounted) {
                                          showSnackBar(context, "Copied!");
                                        }
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    enableDrag: true,
                    constraints: BoxConstraints(maxHeight: 75.h),
                    context: context,
                    builder: (context) {
                      return const BankTransferInstructionBottomSheet();
                    },
                  );
                },
                child: CommonShadowedContainer(
                  padding: const EdgeInsets.all(16),
                  radius: 8,
                  backgroundColor: ColorResource.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "See How To Transfers",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.medium,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down, size: 24)
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: const BeveledRectangleBorder(),
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          StartEndTextRowWidget(
                            startText: "Name",
                            endText: costumerName,
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Costumer ID",
                            endText: costumerId,
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Amount",
                            endText: convertToIdr(billingAmount, 0),
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Service Fee",
                            endText: convertToIdr(serviceFee, 0),
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Admin Fee",
                            endText:
                                convertToIdr(paymentMethod?.totalFee ?? 0, 0),
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Unique Code",
                            endText: convertToIdr(uniqueCode, 0),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: ColorResource.primary.withOpacity(0.24),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: StartEndTextRowWidget(
                              startText: "Total Nominal",
                              endText: convertToIdr(
                                  billingAmount +
                                      (paymentMethod?.totalFee ?? 0) +
                                      serviceFee +
                                      uniqueCode,
                                  0),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: CommonOutlinedContainer(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                borderColor: ColorResource.black100.withOpacity(0.32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction Details",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    const Icon(Icons.keyboard_arrow_right_rounded)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 100.w,
              child: AppFilledButton(
                text: "I've Already Transferred",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PhonePostpaidProcessingPage(
                        paymentMethod: paymentMethod,
                        costumerName: costumerName,
                        costumerId: costumerId,
                        billingAmount: billingAmount,
                        serviceFee: serviceFee,
                        serviceName: serviceName,
                        transactionId: transactionId,
                        uniqueCode: uniqueCode,
                      );
                    }),
                    (route) => route.isFirst,
                  );
                },
                radius: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showUploadReceiptDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorResource.black100,
                    ),
                    children: const [
                      TextSpan(text: "If you transfer to our account using "),
                      TextSpan(
                        text: "EDC Machine",
                        style: TextStyle(fontWeight: FontWeightResource.bold),
                      ),
                      TextSpan(text: " or "),
                      TextSpan(
                        text: "Cash Deposit",
                        style: TextStyle(fontWeight: FontWeightResource.bold),
                      ),
                      TextSpan(
                        text:
                            ", please upload the proof of transfer so we can process your transaction.",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: 100.w,
                  child: AppOutlinedButton(
                    text: "Upload Receipt",
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        showDragHandle: true,
                        enableDrag: true,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const ChooseUploadMethodBottomSheet();
                        },
                      );
                    },
                    fontSize: 12.sp,
                    radius: 16,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
