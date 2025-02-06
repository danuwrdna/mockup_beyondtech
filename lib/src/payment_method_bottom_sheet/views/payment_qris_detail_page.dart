import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';

class PaymentQrisDetailPage extends StatefulWidget {
  const PaymentQrisDetailPage({
    super.key,
    required this.backgroundColor,
    this.qrImage,
    this.qrContent,
    this.totalPayment,
    this.expiredAt,
  });

  final Color? backgroundColor;
  final String? qrImage;
  final String? qrContent;
  final num? totalPayment;
  final int? expiredAt;

  @override
  State<PaymentQrisDetailPage> createState() => _PaymentQrisDetailPageState();
}

class _PaymentQrisDetailPageState extends State<PaymentQrisDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            "Qris Detail",
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: ColorResource.white,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: 680,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 100,
              bottom: 15,
            ),
            width: 420,
            height: 558,
            decoration: BoxDecoration(
              color: ColorResource.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 24, right: 16, left: 16, bottom: 28),
              child: Column(
                children: [
                  Text(
                    "Transaction Details",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 28),
                  StartEndTextRowWidget(
                    startText: "Total Pembayaran",
                    endText: convertToIdr(widget.totalPayment ?? 0, 0),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Bayar Dalam",
                          style: TextStyle(fontSize: 11.sp),
                        ),
                      ),
                      const SizedBox(width: 12),
                      CountdownWidget(
                        time: DateTime.fromMillisecondsSinceEpoch(
                          (widget.expiredAt ?? 0) * 1000,
                        ),
                        textStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.black100,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  AppDashedLine(
                    height: 1,
                    color: ColorResource.black100.withOpacity(0.32),
                  ),
                  const SizedBox(height: 28),
                  Text(
                    "BeyondTech",
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "NMID: ${RegExp(r'ID\d{13}').firstMatch(widget.qrContent ?? "")?.group(0)}",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                    ),
                  ),
                  const SizedBox(height: 28),
                  CachedNetworkImage(
                    imageUrl: widget.qrImage ?? "",
                    width: 150,
                    height: 150,
                    errorWidget: (context, url, error) {
                      return QrImageView(
                        data: widget.qrImage ?? "",
                        version: QrVersions.auto,
                        size: 150.0,
                      );
                    },
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 50.w,
                    child: AppFilledButton(
                      text: "Download QRIS",
                      onPressed: () {
                        showSnackBar(context, "Download Clicked!");
                      },
                      radius: 16,
                      backgroundColor: widget.backgroundColor!,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Assets.icons.icLogo.image(scale: 2.7),
            ),
          ),
        ],
      ),
    );
  }
}
