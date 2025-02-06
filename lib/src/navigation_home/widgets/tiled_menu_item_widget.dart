import 'package:bpay_mobile/src/navigation_home/models/tiled_menu_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class TiledMenuItemWidget extends StatelessWidget {
  const TiledMenuItemWidget({
    super.key,
    required this.menuItem,
    this.fontSize,
    this.fontWeight,
    this.textMaxWidth,
  });

  final TiledMenuModel menuItem;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? textMaxWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: menuItem.onTap,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: menuItem.background ?? ColorResource.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: menuItem.svgAsset != null
                    ? SvgPicture.asset(menuItem.svgAsset!)
                    : menuItem.imageAsset,
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 0,
            child: OverflowBox(
              alignment: Alignment.topCenter,
              maxHeight: 25.w,
              maxWidth: textMaxWidth ?? 25.w,
              child: Text(
                menuItem.label,
                style: TextStyle(
                  fontSize: fontSize ?? 10.sp,
                  color: menuItem.labelColor ?? ColorResource.black100,
                  fontWeight: fontWeight ?? FontWeightResource.regular,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
