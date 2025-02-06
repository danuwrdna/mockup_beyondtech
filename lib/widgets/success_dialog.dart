import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key, required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
      backgroundColor: ColorResource.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      surfaceTintColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 37),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Assets.icons.icCheck.image(height: 60, width: 60),
          ],
        ),
      ),
    );
  }
}
