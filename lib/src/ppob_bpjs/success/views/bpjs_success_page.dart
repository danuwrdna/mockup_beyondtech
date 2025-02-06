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

class BpjsSuccessPage extends StatefulWidget {
  const BpjsSuccessPage({
    super.key,
    required this.recipient,
    required this.bpjsNumber,
    required this.price,
    required this.adminFee,
    required this.uniqueCode,
    required this.transactionId,
  });

  final String recipient;
  final String bpjsNumber;
  final int price;
  final int adminFee;
  final int uniqueCode;
  final String transactionId;

  @override
  State<BpjsSuccessPage> createState() => _BpjsSuccessPageState();
}

class _BpjsSuccessPageState extends State<BpjsSuccessPage> {
  late DateTime date;
  final ScreenshotHelper screenshotHelper = ScreenshotHelper();

  Future<void> _downloadScreenshot() async {
    String fileName =
        "transaction_detail_screenshot_${DateTime.now().millisecondsSinceEpoch}";
    await screenshotHelper.captureAndSaveScreenshot(context, fileName);
  }

  @override
  void initState() {
    setState(() => date = DateTime.now().toLocal());
    super.initState();
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
                color: ColorResource.lightBpjs,
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
                      fontSize: 16.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.bpjs,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorResource.white, width: 4),
                      shape: BoxShape.circle,
                      color: ColorResource.bpjs,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: ColorResource.white,
                      size: 48,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    DateFormat("( dd MMMM yyyy  |  HH:mm:ss )").format(date),
                    style: GoogleFonts.poppins(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 20),
                  BpjsDetailTransactionWidget(
                    widget: widget,
                    onDownload: _downloadScreenshot,
                    screenshotController: screenshotHelper.screenshotController,
                    shareScreenShotHelper: screenshotHelper,
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
            backgroundColor: ColorResource.bpjs,
          ),
        ),
      ),
    );
  }
}

class BpjsDetailTransactionWidget extends StatelessWidget {
  const BpjsDetailTransactionWidget({
    super.key,
    required this.widget,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

  final BpjsSuccessPage widget;
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
                      convertToIdr(
                        widget.price + widget.adminFee + widget.uniqueCode,
                        0,
                      ),
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
                    StartEndTextRowWidget(
                      startText: "Recipient",
                      endText: widget.recipient,
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "BPJS Number",
                      endText: widget.bpjsNumber,
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Amount",
                      endText: convertToIdr(widget.price, 0),
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Admin Fee",
                      endText: convertToIdr(widget.adminFee, 0),
                    ),
                    const SizedBox(height: 16),
                    StartEndTextRowWidget(
                      startText: "Unique Code",
                      endText: convertToIdr(widget.uniqueCode, 0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ShareAndDownloadWidget(
          buttonColor: ColorResource.bpjs,
          onDownload: onDownload,
          shareScreenShotHelper: shareScreenShotHelper,
        ),
      ],
    );
  }
}
