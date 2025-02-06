import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_qris_detail_page.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/transaction/remittance_transaction_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/src/transfer_single/review/views/choose_upload_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_single/upload/views/single_transfer_upload_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class RemittanceReviewPage extends StatelessWidget {
  const RemittanceReviewPage({
    super.key,
    required this.transactionData,
    required this.fieldsControllers,
    required this.senderCountryDetail,
    required this.receiverCountryDetail,
    required this.paymentMethod,
  });

  final RemittanceTransactionData transactionData;
  final Map<String, TextEditingController>? fieldsControllers;
  final CountryDetailModel senderCountryDetail;
  final CountryDetailModel receiverCountryDetail;
  final PaymentMethodItem paymentMethod;

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
                  child: Padding(
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
                              child: CachedNetworkImage(
                                imageUrl: paymentMethod.iconUrl,
                                placeholder: (context, url) {
                                  return Assets.icons.icBank.image(scale: 2);
                                },
                                errorWidget: (context, url, error) {
                                  return Assets.icons.icBank.image(scale: 2);
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              paymentMethod.paymentName,
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
                              if (paymentMethod.paymentCode ==
                                  PaymentMethod.qris.label) ...[
                                Row(
                                  children: [
                                    Assets.icons.icQris.image(scale: 2),
                                    const SizedBox(width: 16),
                                    Text(
                                      paymentMethod.paymentCode,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeightResource.semiBold,
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
                                            totalPayment: transactionData
                                                .totalPayment.amount,
                                            qrImage: transactionData.qrImage,
                                            qrContent:
                                                transactionData.qrContent,
                                            expiredAt:
                                                transactionData.expiredAt,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ] else ...[
                                Expanded(
                                  child: Text(
                                    transactionData.payCode.toString(),
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
                                        text:
                                            transactionData.payCode.toString(),
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
                                    transactionData.totalPayment.amount, 0),
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
                                      text: transactionData.totalPayment.amount
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
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            text: "Complete the transfer before ",
                            children: [
                              TextSpan(
                                text: DateFormat("MMMM, dd yyyy - h:mm a")
                                    .format(DateTime.fromMillisecondsSinceEpoch(
                                        transactionData.expiredAt * 1000)),
                                style: const TextStyle(
                                  fontWeight: FontWeightResource.bold,
                                  color: ColorResource.red,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    " or your transaction will be canceled automatically by the system",
                              ),
                            ],
                          ),
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 24),
              CommonShadowedContainer(
                padding: const EdgeInsets.all(12),
                backgroundColor: ColorResource.white,
                child: StartEndTextRowWidget(
                  startText: "Transaction ID",
                  endText: transactionData.trxId,
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
                            startText: "Recipient Name",
                            endText:
                                "${fieldsControllers?["receiver.name.firstName"]?.text.trim()} ${fieldsControllers?["receiver.name.lastName"]?.text.trim()}",
                          ),
                          const SizedBox(height: 12),
                          if (fieldsControllers?["targetAccount.bankName"]
                                  ?.text
                                  .trim()
                                  .isNotEmpty ??
                              false) ...[
                            StartEndTextRowWidget(
                              startText: "Recipient Bank Name",
                              endText:
                                  "${fieldsControllers?["targetAccount.bankName"]?.text.trim()}",
                            ),
                            const SizedBox(height: 12),
                          ],
                          if (fieldsControllers?["targetAccount.accountNumber"]
                                  ?.text
                                  .trim()
                                  .isNotEmpty ??
                              false) ...[
                            StartEndTextRowWidget(
                              startText: "Recipient Account Number",
                              endText:
                                  "${fieldsControllers?["targetAccount.accountNumber"]?.text.trim()}",
                            ),
                            const SizedBox(height: 12),
                          ],
                          if (fieldsControllers?["targetAccount.homeAddress"]
                                  ?.text
                                  .trim()
                                  .isNotEmpty ??
                              false) ...[
                            StartEndTextRowWidget(
                              startText: "Recipient Home Address",
                              endText:
                                  "${fieldsControllers?["targetAccount.homeAddress"]?.text.trim()}",
                            ),
                            const SizedBox(height: 12),
                          ],
                          StartEndTextRowWidget(
                            startText: "Nominal Received",
                            endText:
                                "${convertToCurrency(transactionData.customerPaymentTransfer.receiveNominal.nominal, 2)} ${receiverCountryDetail.currencyCode}",
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Exchange Rate",
                            endText:
                                "1 ${receiverCountryDetail.currencyCode} = ${convertToCurrency(transactionData.rate.fxRate, 2)} ${senderCountryDetail.currencyCode}",
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Nominal Sent",
                            endText:
                                "${convertToCurrency(transactionData.customerPaymentTransfer.sendNominal.nominal, 2)} ${senderCountryDetail.currencyCode}",
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Transfer Fee",
                            endText:
                                "${convertToCurrency(transactionData.paymentFee.amount - transactionData.uniqueCode, 2)} ${senderCountryDetail.currencyCode}",
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Unique Code",
                            endText:
                                "${convertToCurrency(transactionData.uniqueCode, 2)} ${senderCountryDetail.currencyCode}",
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
                              endText:
                                  "${convertToCurrency(transactionData.totalPayment.amount, 2)} ${senderCountryDetail.currencyCode}",
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
                  showUploadReceiptDialog(context);
                },
                radius: 8,
                backgroundColor: ColorResource.remittance,
              ),
            ),
          ],
        ),
      ),
    );
  }
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
                        return ChooseUploadMethodBottomSheet(
                          iconTint: ColorResource.remittance,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SingleTransferUploadPage(
                                    themeColor: ColorResource.remittance,
                                    onConfirm: () {
                                      // Navigator.pushAndRemoveUntil(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) {
                                      //       return const RemittanceSuccessPage();
                                      //     },
                                      //   ),
                                      //   (route) => route.isFirst,
                                      // );
                                      Navigator.popUntil(
                                        context,
                                        (route) => route.isFirst,
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  fontSize: 12.sp,
                  radius: 16,
                  borderColor: ColorResource.remittance,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
