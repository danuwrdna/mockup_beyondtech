import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StepProgressWidget extends StatelessWidget {
  const StepProgressWidget({
    super.key,
    required this.stepLabel,
    required this.currentStep,
    required this.totalStep,
  });

  final String stepLabel;
  final int currentStep;
  final int totalStep;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          stepLabel,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          "$currentStep / $totalStep steps",
          style: TextStyle(fontSize: 12.sp),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            for (int index = 1; index <= totalStep; index++) ...[
              Expanded(
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: index <= currentStep
                        ? ColorResource.blue900
                        : ColorResource.grey200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Visibility(
                visible: index < 3,
                child: const SizedBox(width: 16),
              ),
            ]
          ],
        )
      ],
    );
  }
}
