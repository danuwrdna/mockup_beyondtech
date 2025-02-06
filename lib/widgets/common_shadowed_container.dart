import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonShadowedContainer extends StatelessWidget {
  const CommonShadowedContainer({
    super.key,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor,
    this.radius = 6,
    this.height,
    this.width,
  });

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color? backgroundColor;
  final double radius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorResource.black.withOpacity(0.18),
            blurRadius: 6,
            offset: const Offset(0, 1),
          )
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
