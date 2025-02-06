import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
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

class PhoneDataSuccessPage extends StatefulWidget {
  const PhoneDataSuccessPage({
    super.key,
    required this.paymentMethod,
    required this.productName,
    required this.phoneNumber,
    required this.selectedPackage,
    required this.selectedDenomination,
    required this.transactionDetailData,
  });

  final PaymentMethodItem? paymentMethod;
  final String productName;
  final String phoneNumber;
  final PpobPackageDataItem selectedPackage;
  final PpobPackageDataItemDenominationList selectedDenomination;
  final PpobTransactionDetailData transactionDetailData;

  @override
  State<PhoneDataSuccessPage> createState() => _PhoneDataSuccessPageState();
}

class _PhoneDataSuccessPageState extends State<PhoneDataSuccessPage> {
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
              decoration: BoxDecoration(
                color: ColorResource.red.withOpacity(0.18),
                borderRadius: const BorderRadius.only(
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
                      color: ColorResource.red,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorResource.white, width: 4),
                      shape: BoxShape.circle,
                      color: ColorResource.red,
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
                  PhoneCreditDetailWidget(
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
            backgroundColor: ColorResource.red,
            radius: 8,
          ),
        ),
      ),
    );
  }
}

class PhoneCreditDetailWidget extends StatelessWidget {
  const PhoneCreditDetailWidget({
    super.key,
    required this.widget,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

  final PhoneDataSuccessPage widget;
  final ScreenshotController screenshotController;
  final ScreenshotHelper shareScreenShotHelper;
  final VoidCallback onDownload;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Screenshot(
          controller: screenshotController,
          child: Column(
            children: [
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
                      endText: widget.paymentMethod?.paymentName ?? "",
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Provider",
                      endText: widget.selectedPackage.packageName,
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Phone Number",
                      endText: widget.phoneNumber,
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: widget.productName == "Phone Credit"
                          ? "Phone Credit Amount"
                          : "Data Package",
                      endText: widget.selectedDenomination.name,
                    ),
                    const SizedBox(height: 20),
                    AppDashedLine(
                      height: 1,
                      color: ColorResource.black100.withOpacity(0.16),
                    ),
                    const SizedBox(height: 20),
                    StartEndTextRowWidget(
                      startText: "Amount",
                      endText:
                          convertToIdr(widget.selectedDenomination.price, 0),
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Admin Fee",
                      endText: convertToIdr(
                        widget.transactionDetailData.totalFee.amount -
                            widget.transactionDetailData.uniqueCode,
                        0,
                      ),
                      endTextDecoration:
                          widget.transactionDetailData.totalFee.isFeatureFree &&
                                  widget.transactionDetailData.totalFee
                                      .isPaymentChannelFree
                              ? TextDecoration.lineThrough
                              : null,
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Unique Code",
                      endText: convertToIdr(
                        widget.transactionDetailData.uniqueCode,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ShareAndDownloadWidget(
          buttonColor: ColorResource.red,
          onDownload: onDownload,
          shareScreenShotHelper: shareScreenShotHelper,
        )
      ],
    );
  }
}
