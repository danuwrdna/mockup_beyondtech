import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShareAndDownloadWidget extends StatelessWidget {
  const ShareAndDownloadWidget({
    super.key,
    required this.onDownload,
    required this.shareScreenShotHelper,
    this.buttonColor,
  });

  final VoidCallback onDownload;
  final ScreenshotHelper shareScreenShotHelper;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          color: ColorResource.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: DownloadAndShareWidget(
            color: buttonColor,
            onDownload: onDownload,
            shareScreenShotHelper: shareScreenShotHelper,
          ),
        ),
      ),
    );
  }
}

class DownloadAndShareWidget extends StatelessWidget {
  const DownloadAndShareWidget({
    super.key,
    required this.onDownload,
    required this.shareScreenShotHelper,
    this.color,
  });

  final VoidCallback onDownload;
  final ScreenshotHelper shareScreenShotHelper;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppFilledButton(
            text: "Download",
            onPressed: onDownload,
            radius: 16,
            leading: Icon(
              Icons.file_download_outlined,
              color: ColorResource.white,
              size: 20.sp,
            ),
            backgroundColor: color ?? ColorResource.blue900,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AppOutlinedButton(
            text: "Share",
            onPressed: () async {
              await shareScreenShotHelper.shareScreenshot(context, 'transaction_detail');
            },
            radius: 16,
            leading: Icon(
              Icons.share_outlined,
              color: color
            ),
            borderColor: color ?? ColorResource.blue900,
          ),
        )
      ],
    );
  }
}
