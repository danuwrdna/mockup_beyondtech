import 'dart:ui';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transaction/detail_transaction/detail_transaction_response_model.dart';
import 'package:bpay_mobile/src/navigation_history/bloc/detail_transaction/bloc/detail_transaction_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/share_download_widget.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

class HistoryDetailPage extends StatefulWidget {
  const HistoryDetailPage({
    super.key,
    required this.transactionId,
    required this.boundaryType,
    required this.createdAt,
    required this.paymentMethodName,
  });

  final String transactionId;
  final String boundaryType;
  final int createdAt;
  final String paymentMethodName;

  @override
  State<HistoryDetailPage> createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  final ScreenshotHelper screenshotHelper = ScreenshotHelper();

  @override
  void initState() {
    context.read<DetailTransactionBloc>().add(
          DetailTransactionEvent.getDetailTransaction(
            widget.transactionId,
            widget.boundaryType,
            widget.createdAt,
          ),
        );
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
      backgroundColor: const Color(0xFFF3F3F3),
      body: Center(
        child: BlocBuilder<DetailTransactionBloc, DetailTransactionState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              loading: () => const CircularProgressIndicator(),
              success: (data) {
                final titleTransaction = data?.data?.transactionTitle ?? "";
                final paymentMethod = data?.data?.paymentChannel;
                Logger().d(paymentMethod);

                final getRecepients = data?.data?.recepients ?? [];
                final accountName = getRecepients.isNotEmpty
                    ? getRecepients[0].accountName ?? "Unknown"
                    : "Unknown";
                final accountNumber = getRecepients.isNotEmpty
                    ? getRecepients[0].accountCode ?? "Unknown"
                    : "Unknown";
                final bankCode = getRecepients.isNotEmpty
                    ? (getRecepients[0].bankCode?.isNotEmpty == true
                        ? getRecepients[0].bankCode!
                        : "-")
                    : "-";
                final currencyType = getRecepients.isNotEmpty
                    ? getRecepients[0].currencyType ?? "-"
                    : "-";
                final receiveCurrencyType = getRecepients.isNotEmpty
                    ? getRecepients[0].receiveCurrencyType ?? "-"
                    : "-";
                final notesForThisPage = getRecepients.isNotEmpty
                    ? (getRecepients[0].note?.isNotEmpty == true
                        ? getRecepients[0].note!
                        : "-")
                    : "-";

                final refNumber = data?.data?.transactionRefId ?? "";

                final getAmount = data?.data?.formatted;
                final getRate = data?.data?.rate;
                final getfee = data?.data?.formatted;
                final uniqueCode = data?.data?.uniqueCode;
                final statusTransaction = data?.data?.statusTransaction;

                return SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Transaction Details",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: ColorResource.primary,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            DateFormat("EEEE, dd MMMM yyyy  |  HH:mm ").format(
                                DateTime.fromMillisecondsSinceEpoch(
                                    widget.createdAt * 1000)),
                            style: GoogleFonts.poppins(fontSize: 11.sp),
                          ),
                          const SizedBox(height: 80),
                          Column(
                            children: [
                              SizedBox(
                                width: 350,
                                height: 250,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: -60,
                                      left: 65,
                                      child: Assets.images.imgTransactionDetails
                                          .image(
                                        width: 220,
                                        height: 180,
                                      ),
                                    ),
                                    Positioned(
                                      top: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 5, sigmaY: 5),
                                          child: Container(
                                            width: 350,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: const Color(0xFFAFBCF8)
                                                  .withOpacity(0.7),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Transaction Total",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                          ColorResource.primary,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Text(
                                                    getAmount?.totalAmount ??
                                                        "",
                                                    style: TextStyle(
                                                      fontSize: 24.sp,
                                                      color:
                                                          ColorResource.primary,
                                                      fontWeight:
                                                          FontWeightResource
                                                              .bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  ColorResource
                                                                      .white,
                                                              width: 2),
                                                          shape:
                                                              BoxShape.circle,
                                                          color: ColorResource
                                                              .green500,
                                                        ),
                                                        child: const Icon(
                                                          Icons.check_rounded,
                                                          color: ColorResource
                                                              .white,
                                                          size: 15,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Text(
                                                        statusTransaction ?? "",
                                                        style: const TextStyle(
                                                          color: ColorResource
                                                              .green500,
                                                          fontWeight:
                                                              FontWeightResource
                                                                  .semiBold,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          TransactionDetailWidget(
                            widget: widget,
                            titleTransaction: titleTransaction,
                            accountName: accountName,
                            currencyType: currencyType,
                            receiveCurrencyType: receiveCurrencyType,
                            getRate: getRate,
                            bankCode: bankCode,
                            accountNumber: accountNumber,
                            refNumber: refNumber,
                            notesForThisPage: notesForThisPage,
                            getAmount: getAmount,
                            getfee: getfee,
                            uniqueCode: uniqueCode,
                            onDownload: _downloadScreenshot,
                            screenshotController:
                                screenshotHelper.screenshotController,
                            shareScreenShotHelper: screenshotHelper,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              failed: (message) => Text("Failed to load: $message"),
            );
          },
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
            text: "Back",
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
  const TransactionDetailWidget({
    super.key,
    required this.widget,
    required this.titleTransaction,
    required this.accountName,
    required this.currencyType,
    required this.receiveCurrencyType,
    required this.getRate,
    required this.bankCode,
    required this.accountNumber,
    required this.refNumber,
    required this.notesForThisPage,
    required this.getAmount,
    required this.getfee,
    required this.uniqueCode,
    required this.onDownload,
    required this.screenshotController,
    required this.shareScreenShotHelper,
  });

  final HistoryDetailPage widget;
  final String titleTransaction;
  final String accountName;
  final String currencyType;
  final String receiveCurrencyType;
  final Rate? getRate;
  final String bankCode;
  final String accountNumber;
  final String refNumber;
  final String notesForThisPage;
  final Formatted? getAmount;
  final Formatted? getfee;
  final int? uniqueCode;
  final VoidCallback onDownload;
  final ScreenshotController screenshotController;
  final ScreenshotHelper shareScreenShotHelper;

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
                Column(
                  children: [
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
                      startText: "Transaction",
                      endText: titleTransaction,
                    ),
                    const SizedBox(height: 20),
                    StartEndTextRowWidget(
                      startText: "Payment Method",
                      endText: widget.paymentMethodName,
                    ),
                    const SizedBox(height: 20),
                    if (titleTransaction != "REMITTANCE" &&
                        titleTransaction != "PPOB") ...[
                      StartEndTextRowWidget(
                        startText: "Recipient",
                        endText: accountName,
                      ),
                      const SizedBox(height: 20),
                    ],
                    if (titleTransaction != "Topup Balance" &&
                        titleTransaction != "Transfer Beyond" &&
                        titleTransaction != "Transfer To Bank" &&
                        titleTransaction != "PPOB") ...[
                      StartEndTextRowWidget(
                        startText: "Sender Currency",
                        endText: currencyType,
                      ),
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                        startText: "Destination Currency",
                        endText: receiveCurrencyType,
                      ),
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                        startText: "Rate Value",
                        endText:
                            ("1 $receiveCurrencyType = ${getRate?.fxRate} $currencyType"),
                      ),
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                        startText: "Service Type",
                        endText: bankCode,
                      ),
                      const SizedBox(height: 20),
                    ],
                    if (titleTransaction != "Topup Balance" &&
                        titleTransaction != "Transfer Beyond" &&
                        titleTransaction != "REMITTANCE" &&
                        titleTransaction != "PPOB") ...[
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                        startText: "Bank Destination",
                        endText: bankCode,
                      ),
                      const SizedBox(height: 20),
                    ],
                    if (titleTransaction != "Topup Balance" &&
                        titleTransaction != "REMITTANCE" &&
                        accountNumber.isNotEmpty) ...[
                      StartEndTextRowWidget(
                        startText: "Account Number",
                        endText: accountNumber,
                      ),
                      const SizedBox(height: 20),
                    ],
                    AppDashedLine(
                      height: 1,
                      color: ColorResource.black100.withOpacity(0.16),
                    ),
                    const SizedBox(height: 20),
                    if (titleTransaction != "Topup Balance" &&
                        titleTransaction != "PPOB") ...[
                      StartEndTextRowWidget(
                        startText: "Ref Number",
                        endText: refNumber,
                      ),
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                          startText: "Notes", endText: notesForThisPage),
                    ],
                    const SizedBox(height: 20),
                    StartEndTextRowWidget(
                      startText: "Amount",
                      endText: getAmount?.price ?? "",
                    ),
                    const SizedBox(height: 20),
                    StartEndTextRowWidget(
                      startText: "Admin Fee",
                      endText: getfee?.totalFee ?? "0",
                    ),
                    if (titleTransaction != "Transfer Beyond" &&
                        titleTransaction != "PPOB") ...[
                      const SizedBox(height: 20),
                      StartEndTextRowWidget(
                        startText: "Unique Code",
                        endText: (uniqueCode ?? 0).toString(),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ],
                ),
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
