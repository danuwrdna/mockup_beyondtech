import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/auth_forgot_password/phone_verification/bloc/phone_verif_bloc.dart';
import 'package:bpay_mobile/src/auth_forgot_password/reset_password/views/forgot_pass_reset_password_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ForgotPassOtpVerificationPage extends StatefulWidget {
  const ForgotPassOtpVerificationPage({
    super.key,
    required this.timeLimit,
    required this.phoneNumber,
    required this.resetToken,
  });

  final int timeLimit;
  final String phoneNumber;
  final String resetToken;

  @override
  State<ForgotPassOtpVerificationPage> createState() =>
      _ForgotPassOtpVerificationPageState();
}

class _ForgotPassOtpVerificationPageState
    extends State<ForgotPassOtpVerificationPage> {
  final GlobalKey<CountdownWidgetState> countdownKey =
      GlobalKey<CountdownWidgetState>();
  bool isCountDownFinished = false;
  bool isOtpSms = true;
  List<TextEditingController> controllers = [];
  int numberOfFields = 6;

  @override
  void initState() {
    for (int i = 0; i < numberOfFields; i++) {
      controllers.add(TextEditingController());
    }
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void restartCountdown() {
    countdownKey.currentState?.restartTimer(
      DateTime.now().add(Duration(seconds: widget.timeLimit)),
    );
    setState(() => isCountDownFinished = false);
  }

  bool areAllFieldsFilled() {
    for (var controller in controllers) {
      if (controller.text.isEmpty) {
        return false;
      }
    }
    return true;
  }

  String getAllValuesAsString() {
    return controllers.map((controller) => controller.text).join("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          LocaleKeys.forgotPassPage_page2_otp_verif_title.tr(),
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
      // body: BlocListener<PhoneVerifBloc, PhoneVerifState>(
      //   listener: (context, state) {
      //     state.when(
      //       initial: () {},
      //       loading: () {},
      //       success: () {
      //         if (context.mounted) {
      //           Navigator.pop(context);
      //           Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) {
      //                 return ForgotPassResetPasswordPage(
      //                   resetToken: widget.resetToken,
      //                 );
      //               },
      //             ),
      //           );
      //         }
      //       },
      //       failed: (message) {
      //         Navigator.pop(context);
      //         if (context.mounted) {
      //           Navigator.pop(context);
      //           showSnackBar(context, message);
      //         }
      //       },
      //     );
      //   },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text:
                    "Enter the code you received via ${isOtpSms ? "SMS" : "WhatsApp"} at ",
                children: [
                  TextSpan(
                    text: "+${widget.phoneNumber}",
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
            SizedBox(
              height: 64,
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 54,
                    child: LabeledTextField(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 18,
                      ),
                      controller: controllers[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                      maxLength: 1,

                      // onChanged: (value) async {
                      //   if (value.isNotEmpty && index != 5) {
                      //     FocusScope.of(context).nextFocus();
                      //   }
                      //   if (value.isEmpty && index != 0) {
                      //     FocusScope.of(context).previousFocus();
                      //   }
                      //   if (areAllFieldsFilled()) {
                      //     if (isOtpSms) {
                      //       // context.read<RegisterVerifyOtpSmsBloc>().add(
                      //       //       RegisterVerifyOtpSmsEvent.verifyOtpSms(
                      //       //         widget.phoneNumber,
                      //       //         getAllValuesAsString(),
                      //       //       ),
                      //       //     );
                      //       context.read<PhoneVerifBloc>().add(
                      //           PhoneVerifEvent.phoneVerif(
                      //               widget.resetToken));
                      //       showDialog(
                      //         barrierDismissible: false,
                      //         context: context,
                      //         builder: (context) => const LoadingDialog(),
                      //       );
                      //       await Future.delayed(const Duration(seconds: 1));
                      //     } else {
                      //       // context.read<RegisterVerifyOtpWhatsappBloc>().add(
                      //       //         RegisterVerifyOtpWhatsappEvent
                      //       //             .verifyOtpWhatsapp(
                      //       //       widget.accountData.phoneNumber,
                      //       //       getAllValuesAsString(),
                      //       //     ));
                      //       showDialog(
                      //         barrierDismissible: false,
                      //         context: context,
                      //         builder: (context) => const LoadingDialog(),
                      //       );
                      // await Future.delayed(const Duration(seconds: 1));
                      // if (context.mounted) {
                      //   Navigator.pop(context);
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) {
                      //         return ForgotPassResetPasswordPage(
                      //           resetToken: widget.resetToken,
                      //         );
                      //       },
                      //     ),
                      //   );
                      // }

                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: (100.w - 40 - (53 * 6)) / 6);
                },
              ),
            ),
            const SizedBox(height: 28),
            CountdownWidget(
              key: countdownKey,
              time: DateTime.now().add(Duration(seconds: widget.timeLimit)),
              onTimerFinish: () {
                setState(() => isCountDownFinished = true);
              },
            ),
            const SizedBox(height: 32),
            if (isCountDownFinished) ...[
              Text.rich(
                TextSpan(
                  text: LocaleKeys.forgotPassPage_page2_otp_verif_title.tr(),
                  children: [
                    TextSpan(
                      text: LocaleKeys.forgotPassPage_page2_resend.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeightResource.bold,
                        color: ColorResource.red,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (isOtpSms) {
                            // context
                            //     .read<SendOtpSmsBloc>()
                            //     .add(SendOtpSmsEvent.sendOtpSms(
                            //       widget.phoneNumber,
                            //       widget.timeLimit.toString(),
                            //     ));
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => const LoadingDialog(),
                            );
                            await Future.delayed(const Duration(seconds: 1));
                            if (context.mounted) Navigator.pop(context);
                            restartCountdown();
                          } else {
                            // context.read<RegisterSendOtpWhatsappBloc>().add(
                            //         RegisterSendOtpWhatsappEvent
                            //             .sendOtpWhatsapp(
                            //       widget.accountData.phoneNumber,
                            //       widget.timeLimit.toString(),
                            //     ));
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => const LoadingDialog(),
                            );
                            await Future.delayed(const Duration(seconds: 1));
                            if (context.mounted) Navigator.pop(context);
                            restartCountdown();
                          }
                        },
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
            ],
            Text(
              LocaleKeys.forgotPassPage_page2_change_method.tr(),
              style: TextStyle(fontSize: 12.sp),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () async {
                if (!isCountDownFinished) {
                  showSnackBar(
                    context,
                    "Please wait before you change the verification method",
                  );
                } else {
                  if (!isOtpSms) {
                    setState(() => isOtpSms = true);
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => const LoadingDialog(),
                    );
                    await Future.delayed(const Duration(seconds: 1));
                    if (context.mounted) Navigator.pop(context);
                    restartCountdown();
                    // context
                    //     .read<SendOtpSmsBloc>()
                    //     .add(SendOtpSmsEvent.sendOtpSms(
                    //       widget.phoneNumber,
                    //       widget.timeLimit.toString(),
                    //     ));
                  } else {
                    setState(() => isOtpSms = false);
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => const LoadingDialog(),
                    );
                    await Future.delayed(const Duration(seconds: 1));
                    if (context.mounted) Navigator.pop(context);
                    restartCountdown();
                    // context
                    //     .read<RegisterSendOtpWhatsappBloc>()
                    //     .add(RegisterSendOtpWhatsappEvent.sendOtpWhatsapp(
                    //       widget.accountData.phoneNumber,
                    //       widget.timeLimit.toString(),
                    //     ));
                  }
                }
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
                      "Send via ${!isOtpSms ? "SMS" : "Whatsapp"}",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: ColorResource.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
