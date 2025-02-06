import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    this.radius = 6,
    this.fontSize,
    this.leading,
    this.backgroundColor = ColorResource.primary,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final String text;
  final double radius;
  final double? fontSize;
  final Widget? leading;
  final Color backgroundColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const Center(
              child: SizedBox(
                height: 26,
                width: 26,
                child: CircularProgressIndicator(color: ColorResource.white),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null) ...[
                  leading!,
                  const SizedBox(width: 8),
                ],
                Text(
                  text,
                  style: TextStyle(
                    color: ColorResource.onPrimary,
                    fontSize: fontSize ?? 13.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
              ],
            ),
    );
  }
}
