import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/share_download_widget.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

class ElectricityPaymentSuccessPage extends StatefulWidget {
  const ElectricityPaymentSuccessPage({
    super.key,
    required this.paymentMethod,
    required this.productName,
    required this.costumerId,
    required this.transactionDetailData,
    required this.selectedDenomination,
    required this.billData,
  });

  final PaymentMethodItem? paymentMethod;
  final String productName;
  final String costumerId;
  final PpobTransactionDetailData transactionDetailData;

  // token
  final PpobPackageDataItemDenominationList? selectedDenomination;

  // bills
  final InquiryPostpaidResponseModel? billData;

  @override
  State<ElectricityPaymentSuccessPage> createState() =>
      _ElectricityPaymentSuccessPageState();
}

class _ElectricityPaymentSuccessPageState
    extends State<ElectricityPaymentSuccessPage> {
  final ScreenshotHelper screenshotHelper = ScreenshotHelper();

  Future<void> _downloadScreenshot() async {
    String fileName =
        "transaction_detail_screenshot_${DateTime.now().millisecondsSinceEpoch}";
    await screenshotHelper.captureAndSaveScreenshot(context, fileName);
  }

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
                            widget.transactionDetailData.createdAt * 1000)),
                    style: GoogleFonts.poppins(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 20),
                  ElectricityPaymentDetailWidget(
                    widget: widget,
                    screenshotController: screenshotHelper.screenshotController,
                    shareScreenShotHelper: screenshotHelper,
                    onDownload: _downloadScreenshot,
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

class ElectricityPaymentDetailWidget extends StatelessWidget {
  const ElectricityPaymentDetailWidget({
    super.key,
    required this.widget,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

  final ElectricityPaymentSuccessPage widget;
  final ScreenshotController screenshotController;
  final ScreenshotHelper shareScreenShotHelper;
  final VoidCallback onDownload;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Screenshot(
          controller: screenshotController,
          child: Container(
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
                  convertToIdr(widget.transactionDetailData.totalAmount, 0),
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 32),
                StartEndTextRowWidget(
                  startText: "ID Transaction",
                  endText: widget.transactionDetailData.transactionId,
                ),
                const SizedBox(height: 20),
                AppDashedLine(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.16),
                ),
                const SizedBox(height: 20),
                StartEndTextRowWidget(
                  startText: "Transaction",
                  endText: widget.productName,
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Payment Method",
                  endText: "${widget.paymentMethod?.paymentName}",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Costumer ID",
                  endText: widget.costumerId,
                ),
                const SizedBox(height: 16),
                if (widget.productName.toLowerCase().contains("token")) ...[
                  StartEndTextRowWidget(
                    startText: "PLN Electricity Amount",
                    endText: widget.selectedDenomination?.name ?? "",
                  ),
                ] else ...[
                  StartEndTextRowWidget(
                    startText: "Costumer Name",
                    endText: widget.billData?.data.customer.customerName ?? "",
                  ),
                ],
                const SizedBox(height: 20),
                AppDashedLine(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.16),
                ),
                const SizedBox(height: 20),
                if (widget.productName.toLowerCase().contains("token")) ...[
                  StartEndTextRowWidget(
                    startText: "Price",
                    endText: convertToCurrency(
                      widget.selectedDenomination?.price ?? 0,
                      0,
                    ),
                  ),
                ] else ...[
                  StartEndTextRowWidget(
                    startText: "Billing Amount",
                    endText: convertToIdr(
                        int.tryParse(widget.billData?.data.taxDetail.desc.detail
                                    .first.nilaiTagihan ??
                                "") ??
                            0,
                        0),
                  ),
                  const SizedBox(height: 16),
                  StartEndTextRowWidget(
                    startText: "Service Fee",
                    endText: convertToIdr(
                        widget.billData?.data.taxDetail.admin ?? 0, 0),
                  ),
                  if (widget.billData?.data.taxDetail.desc.detail.first.denda
                          .isNotEmpty ??
                      false) ...[
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Penalty",
                      endText: convertToIdr(
                          int.tryParse(widget.billData?.data.taxDetail.desc
                                      .detail.first.denda ??
                                  "") ??
                              0,
                          0),
                    ),
                  ],
                ],
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Admin Fee",
                  endText: convertToIdr(
                    widget.transactionDetailData.totalFee.amount,
                    0,
                  ),
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Unique Code",
                  endText: convertToIdr(
                    widget.transactionDetailData.uniqueCode,
                    0,
                  ),
                ),
                if (widget.transactionDetailData.ppobProduct.serialNumber
                    .isNotEmpty) ...[
                  const SizedBox(height: 20),
                  AppDashedLine(
                    height: 1,
                    color: ColorResource.black100.withOpacity(0.16),
                  ),
                  const SizedBox(height: 20),
                  Text("Stroom/Token", style: TextStyle(fontSize: 11.sp)),
                  const SizedBox(height: 16),
                  Text(
                    widget.transactionDetailData.ppobProduct.serialNumber,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightResource.bold,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        ShareAndDownloadWidget(
          onDownload: onDownload,
          shareScreenShotHelper: shareScreenShotHelper,
        )
      ],
    );
  }
}
