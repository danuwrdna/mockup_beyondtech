import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LabeledDropdownMenu extends StatelessWidget {
  const LabeledDropdownMenu({
    super.key,
    this.color = ColorResource.black,
    this.enabledColor,
    this.labelText,
    this.radius = 6,
    this.icon,
    this.contentPadding = const EdgeInsets.fromLTRB(16, 18, 16, 18),
    this.style,
    required this.onChanged,
    required this.items,
    this.value,
    this.enabled = true,
    this.menuMaxHeight,
    this.errorText,
    this.hint,
  });

  final Color color;
  final Color? enabledColor;
  final String? labelText;
  final double radius;
  final Widget? icon;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle? style;
  final List<DropdownMenuItem<dynamic>>? items;
  final Function(dynamic value)? onChanged;
  final dynamic value;
  final bool enabled;
  final double? menuMaxHeight;
  final String? errorText;
  final Widget? hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                value != null ? color : ColorResource.black100.withOpacity(0.8),
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(radius),
        ),
        contentPadding: contentPadding,
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          color: ColorResource.black100.withOpacity(enabled ? 0.8 : 0.4),
          fontSize: 12.sp,
          fontWeight: FontWeightResource.medium,
        ),
        floatingLabelStyle: GoogleFonts.poppins(
          color: enabled ? color : color.withOpacity(0.4),
          fontSize: 12.sp,
          fontWeight: FontWeightResource.medium,
        ),
        counter: const SizedBox(),
        enabled: enabled,
        errorText: errorText,
      ),
      menuMaxHeight: menuMaxHeight,
      items: items,
      onChanged: enabled ? onChanged : null,
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: enabled ? color : color.withOpacity(0.4),
      ),
      value: value,
      hint: hint,
    );
  }
}
