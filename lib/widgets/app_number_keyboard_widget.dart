import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppNumberKeyboardWidget extends StatelessWidget {
  const AppNumberKeyboardWidget({
    super.key,
    required this.onNumberInput,
    required this.onNext,
    required this.onRemove,
  });

  final Function(int) onNumberInput;
  final Function() onNext;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResource.white,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 50),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 12,
          crossAxisSpacing: 48,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 9) {
                onRemove();
              } else if (index == 10) {
                onNumberInput(0);
              } else if (index == 11) {
                onNext();
              } else {
                onNumberInput(index + 1);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: () {
                    if (index == 11) {
                      return Colors.transparent;
                    }
                    if (index == 9) {
                      return ColorResource.red;
                    }
                    return ColorResource.blue900;
                  }(),
                  width: 1.6,
                ),
                color: () {
                  if (index == 11) {
                    return ColorResource.green700;
                  }
                }(),
              ),
              child: Center(
                child: () {
                  if (index == 11) {
                    return Icon(
                      Icons.arrow_forward_outlined,
                      color: ColorResource.white,
                      size: 24.sp,
                    );
                  }
                  if (index == 10) {
                    return Text(
                      "0",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    );
                  }
                  if (index == 9) {
                    return Icon(
                      Icons.close_outlined,
                      color: ColorResource.red,
                      size: 24.sp,
                    );
                  }
                  return Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  );
                }(),
              ),
            ),
          );
        },
      ),
    );
  }
}
