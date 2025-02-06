import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/success_dialog.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({
    super.key,
    this.successMessage,
    required this.navigationTo,
    this.isRegister = false,
  });

  final String? successMessage;
  final Function() navigationTo;
  final bool isRegister;

  void otpEntered(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const LoadingDialog(),
    );
    await Future.delayed(const Duration(seconds: 2));
    if (context.mounted) {
      Navigator.pop(context);
    }
    if (!isRegister && successMessage != null) {
      if (context.mounted) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => SuccessDialog(message: successMessage!),
        );
      }
      await Future.delayed(const Duration(seconds: 4));
    }
    if (context.mounted) {
      navigationTo();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "OTP Verification",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: "Enter the code you received via WhatsApp at ",
                children: [
                  TextSpan(
                    text: "+6282134567890",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              style: TextStyle(fontSize: 12.sp),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int index = 0; index < 6; index++) ...[
                  SizedBox(
                    height: 64,
                    width: 54,
                    child: LabeledTextField(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 18,
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.isNotEmpty && index != 5) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty && index != 0) {
                          FocusScope.of(context).previousFocus();
                        }
                        if (index == 5 && value.isNotEmpty) {
                          otpEntered(context);
                        }
                      },
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 28),
            CountdownWidget(
              time: DateTime.now().add(const Duration(minutes: 1)),
            ),
            const SizedBox(height: 32),
            Text.rich(
              TextSpan(
                text: "Can't get a code yet? ",
                children: [
                  TextSpan(
                    text: "Resend",
                    style: const TextStyle(
                      fontWeight: FontWeightResource.bold,
                      color: ColorResource.red,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        showSnackBar(context, "Debug message: resend clicked!");
                      },
                  ),
                ],
              ),
              style: TextStyle(fontSize: 13.sp),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              "Do you want to change the method?",
              style: TextStyle(fontSize: 12.sp),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () {
                showSnackBar(context, "Debug message: send via sms clicked!");
              },
              child: CommonShadowedContainer(
                padding: const EdgeInsets.all(4),
                backgroundColor: ColorResource.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.mail_outlined, color: ColorResource.red),
                    const SizedBox(width: 8),
                    Text(
                      "send via sms".capitalize(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: ColorResource.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11),
            InkWell(
              onTap: () {
                showSnackBar(context, "Debug message: send via sms clicked!");
              },
              child: CommonShadowedContainer(
                padding: const EdgeInsets.all(4),
                backgroundColor: ColorResource.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.phone_outlined, color: ColorResource.red),
                    const SizedBox(width: 8),
                    Text(
                      "send via call".capitalize(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: ColorResource.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                text: "Wrong number? ",
                children: [
                  TextSpan(
                    text: "Change",
                    style: const TextStyle(
                      fontWeight: FontWeightResource.bold,
                      color: ColorResource.blue900,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        showSnackBar(context, "Debug message: change clicked!");
                      },
                  ),
                ],
              ),
              style: TextStyle(fontSize: 13.sp),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
