import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CommonMenuItem extends StatelessWidget {
  const CommonMenuItem({
    super.key,
    this.leading,
    required this.label,
    this.labelColor = ColorResource.black100,
    this.dividerColor,
    this.trailing,
    this.onTap,
  });

  final Widget? leading;
  final String label;
  final Color labelColor;
  final Color? dividerColor;
  final Widget? trailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: dividerColor != null
                  ? dividerColor!
                  : ColorResource.black100.withOpacity(0.32),
            ),
          ),
        ),
        child: Row(
          children: [
            if (leading != null) ...[
              SizedBox(
                height: 36,
                width: 36,
                child: leading!,
              ),
              const SizedBox(width: 16),
            ],
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: labelColor,
                ),
              ),
            ),
            if (trailing != null) ...[const SizedBox(width: 6), trailing!],
          ],
        ),
      ),
    );
  }
}