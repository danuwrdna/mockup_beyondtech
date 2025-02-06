import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.message,
    this.primaryButtonText = "Yes",
    this.primaryButtonPressed,
    this.secondaryButtonText = "No",
    this.secondaryButtonPressed,
  });

  final String message;
  final String primaryButtonText;
  final String secondaryButtonText;
  final Function()? primaryButtonPressed;
  final Function()? secondaryButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 36),
            Row(
              children: [
                Expanded(
                  child: AppOutlinedButton(
                    text: secondaryButtonText,
                    onPressed: secondaryButtonPressed,
                    fontSize: 12.sp,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppFilledButton(
                    text: primaryButtonText,
                    onPressed: primaryButtonPressed,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
