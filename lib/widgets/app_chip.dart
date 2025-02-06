import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    this.selected,
    this.onTap,
    this.leadingIcon,
  });

  final String label;
  final bool? selected;
  final Function()? onTap;
  final Widget? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: leadingIcon != null
            ? const EdgeInsets.fromLTRB(8, 2, 12, 2)
            : const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
        decoration: BoxDecoration(
          color:
              selected == false ? ColorResource.white : ColorResource.blue850,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: ColorResource.black.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Opacity(
          opacity: selected == false ? 0.5 : 1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leadingIcon != null) ...[
                SizedBox(height: 8, width: 8, child: leadingIcon),
                const SizedBox(width: 4),
              ],
              Text(
                label,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: selected == false
                      ? ColorResource.grey400
                      : ColorResource.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
