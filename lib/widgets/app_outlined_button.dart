import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.radius = 6,
    this.fontSize,
    this.leading,
    this.borderColor = ColorResource.blue900,
    this.padding,
  });

  final VoidCallback? onPressed;
  final String text;
  final double radius;
  final double? fontSize;
  final Widget? leading;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
        elevation: 0,
        side: () {
          if (onPressed != null) return BorderSide(color: borderColor);
        }(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              color: () {
                if (onPressed != null) return borderColor;
              }(),
              fontSize: fontSize ?? 14.sp,
              fontWeight: FontWeightResource.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
