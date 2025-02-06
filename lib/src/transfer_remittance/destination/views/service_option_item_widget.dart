import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServiceOptionItem extends StatelessWidget {
  const ServiceOptionItem({
    super.key,
    required this.label,
    this.selected,
    this.onTap,
  });

  final String label;
  final bool? selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.5, horizontal: 10),
        decoration: BoxDecoration(
          color:
              selected == true ? ColorResource.orange500 : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: selected == true ? 12.sp : 11.sp,
              fontWeight: selected == true
                  ? FontWeightResource.semiBold
                  : FontWeightResource.regular,
              color: selected == true
                  ? ColorResource.white
                  : ColorResource.black100.withOpacity(0.4),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
