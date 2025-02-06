import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StartEndTextRowWidget extends StatelessWidget {
  const StartEndTextRowWidget({
    super.key,
    required this.startText,
    required this.endText,
    this.textColor,
    this.endTextDecoration,
  });

  final String startText;
  final String endText;
  final Color? textColor;
  final TextDecoration? endTextDecoration;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            startText,
            style: TextStyle(fontSize: 11.sp, color: textColor),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            textAlign: TextAlign.end,
            endText,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeightResource.semiBold,
              color: endTextDecoration != null
                  ? textColor != null
                      ? textColor?.withOpacity(0.5)
                      : ColorResource.black100.withOpacity(0.5)
                  : textColor,
              decoration: endTextDecoration,
            ),
          ),
        ),
      ],
    );
  }
}
