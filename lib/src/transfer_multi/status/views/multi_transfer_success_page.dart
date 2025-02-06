import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
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

class MultiTransferSuccessPage extends StatefulWidget {
  const MultiTransferSuccessPage({
    super.key,
    this.transactionData,
    this.refId,
    this.paymentMethod,
  });

  final HistoryTransferSingleResponseModel? transactionData;
  final String? refId;
  final PaymentMethodItem? paymentMethod;

  @override
  State<MultiTransferSuccessPage> createState() =>
      _MultiTransferSuccessPageState();
}

class _MultiTransferSuccessPageState extends State<MultiTransferSuccessPage> {
  late List<String?> listOfUniqueDestination;
  late List<String?> listOfAccountNumber;
  late List<String?> listOfRecipientName;

  final ScreenshotHelper screenshotHelper = ScreenshotHelper();

  Future<void> _downloadScreenshot() async {
    String fileName =
        "transaction_detail_screenshot_${DateTime.now().millisecondsSinceEpoch}";
    await screenshotHelper.captureAndSaveScreenshot(context, fileName);
  }

  @override
  void initState() {
    listOfUniqueDestination = widget.transactionData?.data
            ?.map((e) => e.recepients?.firstOrNull?.bankCode)
            .toSet()
            .toList() ??
        [];
    listOfAccountNumber = widget.transactionData?.data
            ?.map((e) => e.recepients?.firstOrNull?.accountCode)
            .toList() ??
        [];
    listOfRecipientName = widget.transactionData?.data
            ?.map((e) => e.recepients?.firstOrNull?.accountName)
            .toList() ??
        [];
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
                            (widget.transactionData?.data?[0].createdAt ?? 0) *
                                1000)),
                    style: GoogleFonts.poppins(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 20),
                  TransferMultiDetailSuccessWidget(
                    widget: widget,
                    listOfUniqueDestination: listOfUniqueDestination,
                    listOfRecipientName: listOfRecipientName,
                    listOfAccountNumber: listOfAccountNumber,
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

class TransferMultiDetailSuccessWidget extends StatelessWidget {
  const TransferMultiDetailSuccessWidget({
    super.key,
    required this.widget,
    required this.listOfUniqueDestination,
    required this.listOfRecipientName,
    required this.listOfAccountNumber,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

  final MultiTransferSuccessPage widget;
  final List<String?> listOfUniqueDestination;
  final List<String?> listOfRecipientName;
  final List<String?> listOfAccountNumber;

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
                  widget.transactionData?.data?[0].formatted?.totalAmount ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 32),
                StartEndTextRowWidget(
                  startText: "ID Transaction",
                  endText: widget.refId ?? "",
                ),
                const SizedBox(height: 20),
                AppDashedLine(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.16),
                ),
                const SizedBox(height: 20),
                const StartEndTextRowWidget(
                  startText: "Transaction",
                  endText: "Multiple Bank Transfer",
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destination",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for (int i = 0;
                            i < listOfUniqueDestination.length;
                            i++) ...[
                          Text(
                            "${listOfUniqueDestination.length > 1 ? "\u2022  " : ""}${listOfUniqueDestination[i]}",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Transaction",
                  endText: widget.paymentMethod?.paymentName ?? "",
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recipients",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for (int i = 0;
                            i < listOfRecipientName.length;
                            i++) ...[
                          Text(
                            "${listOfRecipientName.length > 1 ? "\u2022  " : ""}${listOfRecipientName[i]}",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Number",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for (int i = 0;
                            i < listOfAccountNumber.length;
                            i++) ...[
                          Text(
                            "${listOfAccountNumber.length > 1 ? "\u2022  " : ""}${listOfAccountNumber[i]}",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                AppDashedLine(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.16),
                ),
                const SizedBox(height: 20),
                StartEndTextRowWidget(
                  startText: "Ref. Number",
                  endText: widget.refId ?? "",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Amount",
                  endText:
                      widget.transactionData?.data?[0].formatted?.totalAmount ??
                          "",
                ),
                if ((widget.transactionData?.data?[0].uniqueCode ?? 0) > 0) ...[
                  const SizedBox(height: 16),
                  StartEndTextRowWidget(
                    startText: "Unique Code",
                    endText: convertToIdr(
                      widget.transactionData?.data?[0].uniqueCode ?? 0,
                      0,
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
