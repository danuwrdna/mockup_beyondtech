import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    this.isActive = false,
    required this.label,
    required this.activeIcon,
    required this.inactiveIcon,
    this.labelColor = ColorResource.white,
    this.backgroundColor = ColorResource.primary,
    this.onPressed,
  });

  final bool isActive;
  final Widget activeIcon;
  final Widget inactiveIcon;
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return SizedBox(
        width: 15.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            activeIcon,
            const SizedBox(height: 6),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 11.sp,
                fontWeight: FontWeightResource.medium,
                color: ColorResource.blue900,
              ),
            ),
          ],
        ),
      );
    }
    return InkWell(
      onTap: onPressed,
      child: SizedBox(width: 15.w, height: 15.w, child: inactiveIcon),
    );
  }
}
