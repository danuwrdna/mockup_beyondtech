import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    super.key,
    this.color = ColorResource.black,
    this.errorColor = ColorResource.error,
    this.labelText,
    this.hintText,
    this.errorText,
    this.radius = 6,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.contentPadding = const EdgeInsets.fromLTRB(16, 18, 16, 18),
    this.hintStyle,
    this.maxLength,
    this.onChanged,
    this.style,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.keyboardType,
    this.prefixIcon,
    this.enabledColor,
    this.enabled,
    this.maxLines = 1,
    this.minLines,
    this.cursorColor,
    this.suffix,
    this.onSubmitted,
    this.onTap,
    this.readOnly = false,
  });

  final Color color;
  final Color errorColor;
  final Color? enabledColor;
  final Color? cursorColor;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final double radius;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool? enabled;
  final void Function()? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledColor != null
                ? enabledColor!
                : controller != null && controller!.text.isNotEmpty
                    ? color
                    : ColorResource.black100.withOpacity(0.8),
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(radius),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(radius),
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          color: errorText != null
              ? errorColor
              : ColorResource.black100.withOpacity(0.8),
          fontSize: 12.sp,
          fontWeight: FontWeightResource.medium,
        ),
        floatingLabelStyle: GoogleFonts.poppins(
          color: errorText != null ? errorColor : color,
          fontSize: 12.sp,
          fontWeight: FontWeightResource.medium,
        ),
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyle(fontSize: 13.sp, fontStyle: FontStyle.italic),
        errorText: errorText,
        errorStyle: TextStyle(color: errorColor),
        errorMaxLines: 2,
        contentPadding: contentPadding,
        suffixIcon: suffixIcon,
        suffixIconColor: errorText != null ? errorColor : color,
        prefixIcon: prefixIcon,
        counter: const SizedBox(),
        filled: enabled == false ? true : null,
        fillColor: enabled == false ? ColorResource.grey200 : null,
        suffix: suffix,
      ),
      cursorColor: cursorColor ?? color,
      cursorErrorColor: errorColor,
      obscureText: obscureText,
      obscuringCharacter: "*",
      maxLength: maxLength,
      onChanged: onChanged,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onSubmitted: onSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      style: style,
      textAlign: textAlign,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      enabled: enabled,
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
