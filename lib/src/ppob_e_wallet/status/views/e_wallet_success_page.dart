import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class EWalletSuccessPage extends StatelessWidget {
  const EWalletSuccessPage({
    super.key,
    required this.price,
    required this.paymentMethod,
    required this.eWalletDestination,
    required this.transactionDetailData,
  });

  final int price;
  final PaymentMethodItem? paymentMethod;
  final String eWalletDestination;
  final PpobTransactionDetailData transactionDetailData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 100.w,
              height: 380,
              decoration: const BoxDecoration(
                color: ColorResource.blue400,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "Transaction Successful",
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.blue900,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorResource.white, width: 4),
                      shape: BoxShape.circle,
                      color: ColorResource.green400,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: ColorResource.white,
                      size: 48,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    DateFormat("( dd MMMM yyyy  |  HH:mm:ss )").format(
                        DateTime.fromMillisecondsSinceEpoch(
                            transactionDetailData.createdAt * 1000)),
                    style: GoogleFonts.poppins(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: ColorResource.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Total Transaction",
                          style: GoogleFonts.poppins(fontSize: 12.sp),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          convertToIdr(transactionDetailData.totalAmount, 0),
                          style: GoogleFonts.poppins(
                            fontSize: 24.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                        const SizedBox(height: 32),
                        StartEndTextRowWidget(
                          startText: "ID Transaction",
                          endText: transactionDetailData.transactionId,
                        ),
                        const SizedBox(height: 20),
                        AppDashedLine(
                          height: 1,
                          color: ColorResource.black100.withOpacity(0.16),
                        ),
                        const SizedBox(height: 20),
                        const StartEndTextRowWidget(
                          startText: "Transaction",
                          endText: "Top Up E-Wallet",
                        ),
                        const SizedBox(height: 16),
                        StartEndTextRowWidget(
                          startText: "Payment Method",
                          endText: transactionDetailData.paymentChannel.name,
                        ),
                        const SizedBox(height: 16),
                        StartEndTextRowWidget(
                          startText: "E-Wallet",
                          endText: eWalletDestination,
                        ),
                        const SizedBox(height: 16),
                        StartEndTextRowWidget(
                          startText: "E-Wallet Number",
                          endText:
                              transactionDetailData.ppobProduct.productNumber,
                        ),
                        const SizedBox(height: 20),
                        AppDashedLine(
                          height: 1,
                          color: ColorResource.black100.withOpacity(0.16),
                        ),
                        const SizedBox(height: 20),
                        StartEndTextRowWidget(
                          startText: "Amount",
                          endText: convertToIdr(
                            transactionDetailData.ppobProduct.sellingPrice,
                            0,
                          ),
                        ),
                        const SizedBox(height: 16),
                        StartEndTextRowWidget(
                          startText: "Admin Fee",
                          endText: convertToIdr(
                            transactionDetailData.totalFee.amount,
                            0,
                          ),
                          endTextDecoration:
                              transactionDetailData.totalFee.isFeatureFree &&
                                      transactionDetailData
                                          .totalFee.isPaymentChannelFree
                                  ? TextDecoration.lineThrough
                                  : null,
                        ),
                        if (transactionDetailData.uniqueCode > 0) ...[
                          const SizedBox(height: 16),
                          StartEndTextRowWidget(
                            startText: "Unique Code",
                            endText: convertToIdr(
                              transactionDetailData.uniqueCode,
                              0,
                            ),
                          ),
                        ],
                        const SizedBox(height: 60),
                        Row(
                          children: [
                            Expanded(
                              child: AppFilledButton(
                                text: "Download",
                                onPressed: () {},
                                radius: 16,
                                leading: Icon(
                                  Icons.file_download_outlined,
                                  color: ColorResource.white,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: AppOutlinedButton(
                                text: "Share",
                                onPressed: () {},
                                radius: 16,
                                leading: const Icon(
                                  Icons.share_outlined,
                                  color: ColorResource.blue900,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
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
        child: PopScope(
          canPop: false,
          child: AppFilledButton(
            text: "Back to Homepage",
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            radius: 8,
          ),
        ),
      ),
    );
  }
}
