import 'package:bpay_mobile/src/transfer_single/status/bloc/status/single_transfer_status_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/status/model/detail_history_transfer_single_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/share_download_widget.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

class SingleTransferSuccessPage extends StatefulWidget {
  const SingleTransferSuccessPage(
      {super.key, required this.transactionId, required this.lastDate});
  final String transactionId;
  final int lastDate;

  @override
  State<SingleTransferSuccessPage> createState() =>
      _SingleTransferSuccessPageState();
}

class _SingleTransferSuccessPageState extends State<SingleTransferSuccessPage> {
  final ScreenshotHelper screenshotHelper = ScreenshotHelper();

  @override
  void initState() {
    context.read<SingleTransferStatusBloc>().add(
        SingleTransferStatusEvent.getBankTransferTransactionHistory(
            widget.transactionId, widget.lastDate));
    super.initState();
  }

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
            BlocBuilder<SingleTransferStatusBloc, SingleTransferStatusState>(
              builder: (context, state) {
                return state.when(
                    initial: () => const CircularProgressIndicator(),
                    loading: () => const CircularProgressIndicator(),
                    success: (data) {
                      return Container();
                    },
                    getBankTransferTransactionHistorySuccess: (data) {
                      return SafeArea(
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
                                border: Border.all(
                                    color: ColorResource.white, width: 4),
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
                                  .format(DateTime.fromMillisecondsSinceEpoch(
                                      (data.data?.created_at ?? 0) * 1000)),
                              style: GoogleFonts.poppins(fontSize: 11.sp),
                            ),
                            const SizedBox(height: 20),
                            TransactionDetailWidget(
                              data: data,
                              screenshotController:
                                  screenshotHelper.screenshotController,
                              shareScreenShotHelper: screenshotHelper,
                              onDownload: _downloadScreenshot,
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      );
                    },
                    failed: (message) =>
                        Text("Failed to load balance: $message"));
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

class TransactionDetailWidget extends StatelessWidget {
  final DetailHistoryTransferSingleResponse data;
  final ScreenshotController screenshotController;
  final ScreenshotHelper shareScreenShotHelper;
  final VoidCallback onDownload;

  const TransactionDetailWidget({
    super.key,
    required this.data,
    required this.screenshotController,
    required this.shareScreenShotHelper,
    required this.onDownload,
  });

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
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: const BoxDecoration(
              color: ColorResource.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Text(
                  "Total Transaction",
                  style: GoogleFonts.poppins(fontSize: 12.sp),
                ),
                const SizedBox(height: 16),
                Text(
                  data.data?.formatted?.total_amount ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 32),
                StartEndTextRowWidget(
                  startText: "ID Transaction",
                  endText: data.data?.transaction_id ?? "",
                ),
                const SizedBox(height: 20),
                AppDashedLine(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.16),
                ),
                const SizedBox(height: 20),
                const StartEndTextRowWidget(
                  startText: "Transaction",
                  endText: "Single Bank Transfer",
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
                    Text(
                      "${data.data?.recepients?[0].bank_name}",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Transaction",
                  endText: data.data?.payment_channel?.name ?? "",
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
                    Text(
                      "${data.data?.recepients?[0].account_name}",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
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
                    Text(
                      "${data.data?.recepients?[0].account_code}",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
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
                  endText: data.data?.transaction_ref_id ?? "",
                ),
                const SizedBox(height: 16),
                StartEndTextRowWidget(
                  startText: "Amount",
                  endText: data.data?.formatted?.total_amount ?? "",
                ),
                if ((data.data?.unique_code ?? 0) > 0) ...[
                  const SizedBox(height: 16),
                  StartEndTextRowWidget(
                    startText: "Unique Code",
                    endText: convertToIdr(
                      data.data?.unique_code ?? 0,
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
