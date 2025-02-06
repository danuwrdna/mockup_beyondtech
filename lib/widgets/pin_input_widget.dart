import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PinInputWidget extends StatelessWidget {
  const PinInputWidget({
    super.key,
    required this.isNotValid,
    required this.pin,
    required this.controller,
    required this.onChange,
  });

  final bool isNotValid;
  final String pin;
  final TextEditingController controller;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: ColorResource.blue400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 1; index <= 6; index++) ...[
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isNotValid
                              ? ColorResource.error
                              : index <= pin.length
                                  ? ColorResource.blue900
                                  : ColorResource.white,
                        ),
                      ),
                      Visibility(
                        visible: index < 6,
                        child: const SizedBox(width: 10),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              counter: SizedBox.shrink(),
            ),
            style: const TextStyle(color: Colors.transparent),
            showCursor: false,
            enableInteractiveSelection: false,
            keyboardType: TextInputType.number,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            autofocus: true,
            maxLength: 6,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }
}
