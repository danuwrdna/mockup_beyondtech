import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/share_download_widget.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

class BalanceTransferSuccessPage extends StatefulWidget {
  const BalanceTransferSuccessPage({
    super.key,
    required this.recipient,
    required this.phoneNumber,
    required this.nominal,
    required this.note,
    required this.transactionId,
  });

  final String recipient;
  final String phoneNumber;
  final int nominal;
  final String note;
  final String transactionId;

  static DateTime date = DateTime.now().toLocal();

  @override
  State<BalanceTransferSuccessPage> createState() =>
      _BalanceTransferSuccessPageState();
}

class _BalanceTransferSuccessPageState
    extends State<BalanceTransferSuccessPage> {
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
                    DateFormat("( dd MMMM yyyy  |  HH:mm:ss )")
                        .format(BalanceTransferSuccessPage.date),
                    style: GoogleFonts.poppins(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 20),
                  DetailTransactionTransferBalanceWidget(
                    widget: widget,
                    screenshotController: screenshotHelper.screenshotController,
                    shareScreenShotHelper: screenshotHelper,
                    onDownload: _downloadScreenshot,
                  ),
                  const SizedBox(height: 28),
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
        child: AppFilledButton(
          text: "Back to Homepage",
          onPressed: () => Navigator.pop(context),
          radius: 8,
        ),
      ),
    );
  }
}

class DetailTransactionTransferBalanceWidget extends StatelessWidget {
  const DetailTransactionTransferBalanceWidget({
    super.key,
    required this.widget,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

  final BalanceTransferSuccessPage widget;
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
                      convertToIdr(widget.nominal, 0),
                      style: GoogleFonts.poppins(
                        fontSize: 24.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                    const SizedBox(height: 32),
                    StartEndTextRowWidget(
                      startText: "ID Transaction",
                      endText: widget.transactionId,
                    ),
                    const SizedBox(height: 20),
                    AppDashedLine(
                      height: 1,
                      color: ColorResource.black100.withOpacity(0.16),
                    ),
                    const SizedBox(height: 20),
                    const StartEndTextRowWidget(
                      startText: "Transaction",
                      endText: "Transfer to Balance",
                    ),
                    const SizedBox(height: 12),
                    const StartEndTextRowWidget(
                      startText: "Payment Method",
                      endText: "Balance",
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Recipient",
                      endText: widget.recipient,
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Account Number",
                      endText: formatObscurePhoneNumber(widget.phoneNumber),
                    ),
                    const SizedBox(height: 20),
                    AppDashedLine(
                      height: 1,
                      color: ColorResource.black100.withOpacity(0.16),
                    ),
                    const SizedBox(height: 20),
                    const StartEndTextRowWidget(
                      startText: "Ref. Number",
                      endText: "TF - c2cadc3c",
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Amount",
                      endText: convertToIdr(widget.nominal, 0),
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Admin Fee",
                      endText: convertToIdr(1000, 0),
                      endTextDecoration: TextDecoration.lineThrough,
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Unique Code",
                      endText: convertToIdr(0, 0),
                    ),
                    const SizedBox(height: 12),
                    StartEndTextRowWidget(
                      startText: "Notes",
                      endText: widget.note,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
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
