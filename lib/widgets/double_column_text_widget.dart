import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DoubleColumnTextWidget extends StatelessWidget {
  const DoubleColumnTextWidget({
    super.key,
    required this.startText,
    required this.endText,
  });

  final String startText;
  final String endText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            startText,
            style: TextStyle(
              fontSize: 12.sp,
              color: ColorResource.black100.withOpacity(0.8),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 6,
          child: Text(
            endText,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeightResource.semiBold,
            ),
          ),
        ),
      ],
    );
  }
}
