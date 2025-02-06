import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_qris_detail_page.dart';
import 'package:bpay_mobile/src/ppob_bpjs/success/views/bpjs_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
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

class BpjsReviewPage extends StatelessWidget {
  const BpjsReviewPage({
    super.key,
    this.paymentMethod,
    required this.bpjsNumber,
    required this.price,
    required this.adminFee,
    required this.uniqueCode,
    required this.recipient,
    required this.transactionData,
  });

  final PaymentMethodItem? paymentMethod;
  final String recipient;
  final String bpjsNumber;
  final int price;
  final int adminFee;
  final int uniqueCode;
  final PpobTransactionData transactionData;

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
      body: Padding(
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
                            "Finish Before ${DateFormat("dd MMM yyyy, HH:mm").format(DateTime.fromMillisecondsSinceEpoch(transactionData.expiredAt * 1000))} WIB",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
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
                              transactionData.expiredAt * 1000,
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
                                  borderRadius: BorderRadius.circular(4)),
                              child: CachedNetworkImage(
                                imageUrl: paymentMethod?.iconUrl ?? "",
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
                              if (paymentMethod?.paymentCode ==
                                  PaymentMethod.qris.label) ...[
                                Row(
                                  children: [
                                    Assets.icons.icQris.image(scale: 2),
                                    const SizedBox(width: 8),
                                    Text(
                                      paymentMethod?.paymentCode ?? "",
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
                                  backgroundColor: ColorResource.bpjs,
                                  fontSize: 11.sp,
                                  radius: 20,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return PaymentQrisDetailPage(
                                            backgroundColor: ColorResource.bpjs,
                                            totalPayment:
                                                transactionData.totalPayment,
                                            qrImage: transactionData
                                                .paymentChannel.qrImage,
                                            qrContent: transactionData
                                                .paymentChannel.qrContent,
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
                                    transactionData.paymentChannel.payCode,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                AppOutlinedButton(
                                  text: "Copy",
                                  borderColor: ColorResource.bpjs,
                                  onPressed: () {
                                    Clipboard.setData(
                                      const ClipboardData(
                                        text: "117601000304303",
                                      ),
                                    ).then(
                                      (value) {
                                        if (context.mounted) {
                                          showSnackBar(context, "Copied!");
                                        }
                                      },
                                    );
                                  },
                                  radius: 20,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 17.5,
                                  ),
                                  fontSize: 11.sp,
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
                                  price +
                                      adminFee +
                                      (paymentMethod?.totalFee ?? 0) +
                                      uniqueCode,
                                  0,
                                ),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              ),
                              AppOutlinedButton(
                                text: "Copy",
                                borderColor: ColorResource.bpjs,
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                        text: (price +
                                                adminFee +
                                                (paymentMethod?.totalFee ?? 0) +
                                                uniqueCode)
                                            .toStringAsFixed(0)),
                                  ).then(
                                    (value) {
                                      if (context.mounted) {
                                        showSnackBar(context, "Copied!");
                                      }
                                    },
                                  );
                                },
                                radius: 20,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 7,
                                  horizontal: 17.5,
                                ),
                                fontSize: 11.sp,
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
            const SizedBox(height: 24),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Cancel Transaction",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.semiBold,
                    color: ColorResource.bpjs,
                  ),
                ),
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
                  context: context,
                  builder: (context) {
                    return CommonShadowedContainer(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      radius: 0,
                      backgroundColor: ColorResource.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          StartEndTextRowWidget(
                            startText: "Payment Method",
                            endText: "${paymentMethod?.paymentName}",
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "BPJS Number",
                            endText: bpjsNumber,
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Price",
                            endText: convertToIdr(price, 0),
                          ),
                          const SizedBox(height: 12),
                          StartEndTextRowWidget(
                            startText: "Admin Fee",
                            endText: convertToIdr(adminFee, 0),
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
                              color: ColorResource.lightBpjs,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: StartEndTextRowWidget(
                              startText: "Total Payment",
                              endText: convertToIdr(
                                price +
                                    adminFee +
                                    (paymentMethod?.totalFee ?? 0) +
                                    uniqueCode,
                                0,
                              ),
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
                borderColor: ColorResource.bpjs,
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
                    MaterialPageRoute(
                      builder: (context) {
                        return BpjsProcessingPage(
                          recipient: recipient,
                          bpjsNumber: bpjsNumber,
                          price: price,
                          adminFee: adminFee,
                          uniqueCode: uniqueCode,
                          transactionData: transactionData,
                        );
                      },
                    ),
                    (route) => route.isFirst,
                  );
                },
                radius: 8,
                backgroundColor: ColorResource.bpjs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
