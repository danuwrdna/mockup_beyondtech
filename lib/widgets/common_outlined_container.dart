import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonOutlinedContainer extends StatelessWidget {
  const CommonOutlinedContainer({
    super.key,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor,
    this.borderColor = ColorResource.blue900,
    this.radius = 6,
    this.width,
    this.height,
    this.borderWidth = 1,
  });

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color? backgroundColor;
  final Color borderColor;
  final double radius;
  final double? width;
  final double? height;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: child,
    );
  }
}
