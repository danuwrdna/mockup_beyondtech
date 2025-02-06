import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/change_password/change_password_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/send_otp_sms/change_password_send_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/send_otp_whatsapp/change_password_send_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/verify_otp_sms/change_password_verify_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/verify_otp_whatsapp/change_password_verify_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/success_dialog.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class OtpPasswordChangePage extends StatefulWidget {
  const OtpPasswordChangePage({
    super.key,
    required this.oldPassword,
    required this.newPassword,
    required this.timeLimit,
    required this.phoneNumber,
  });

  final String oldPassword;
  final String newPassword;
  final int timeLimit;
  final String phoneNumber;

  @override
  State<OtpPasswordChangePage> createState() => _OtpPasswordChangePageState();
}

class _OtpPasswordChangePageState extends State<OtpPasswordChangePage> {
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
      body: MultiBlocListener(
        listeners: [
          BlocListener<ChangePasswordBloc, ChangePasswordState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: () async {
                  Navigator.pop(context);
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return const SuccessDialog(
                        message:
                            "Success! Your password was successfully changed",
                      );
                    },
                  );
                  await Future.delayed(const Duration(seconds: 2));
                  if (context.mounted) {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }
                },
                failed: (message) {
                  Navigator.pop(context);
                  showSnackBar(context, message);
                },
              );
            },
          ),
          BlocListener<ChangePasswordSendOtpSmsBloc,
              ChangePasswordSendOtpSmsState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const LoadingDialog(),
                  );
                },
                success: () {
                  Navigator.pop(context);
                  restartCountdown();
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  showSnackBar(context, message);
                },
              );
            },
          ),
          BlocListener<ChangePasswordVerifyOtpSmsBloc,
              ChangePasswordVerifyOtpSmsState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const LoadingDialog(),
                  );
                },
                success: () {
                  context.read<ChangePasswordBloc>().add(
                        ChangePasswordEvent.changePassword(
                          widget.oldPassword,
                          widget.newPassword,
                        ),
                      );
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  showSnackBar(context, message);
                },
              );
            },
          ),
          BlocListener<ChangePasswordSendOtpWhatsappBloc,
              ChangePasswordSendOtpWhatsappState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const LoadingDialog(),
                  );
                },
                success: () {
                  Navigator.pop(context);
                  restartCountdown();
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  showSnackBar(context, message);
                },
              );
            },
          ),
          BlocListener<ChangePasswordVerifyOtpWhatsappBloc,
              ChangePasswordVerifyOtpWhatsappState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const LoadingDialog(),
                  );
                },
                success: () {
                  context.read<ChangePasswordBloc>().add(
                        ChangePasswordEvent.changePassword(
                          widget.oldPassword,
                          widget.newPassword,
                        ),
                      );
                },
                failed: (message) {
                  Navigator.pop(context);
                  if (kDebugMode) print(message);
                  showSnackBar(context, message);
                },
              );
            },
          ),
        ],
        child: Padding(
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
                        onChanged: (value) {
                          if (value.isNotEmpty && index != 5) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty && index != 0) {
                            FocusScope.of(context).previousFocus();
                          }
                          if (areAllFieldsFilled()) {
                            if (isOtpSms) {
                              context
                                  .read<ChangePasswordVerifyOtpSmsBloc>()
                                  .add(ChangePasswordVerifyOtpSmsEvent
                                      .verifyOtpSms(
                                    widget.phoneNumber,
                                    getAllValuesAsString(),
                                  ));
                            } else {
                              context
                                  .read<ChangePasswordVerifyOtpWhatsappBloc>()
                                  .add(ChangePasswordVerifyOtpWhatsappEvent
                                      .verifyOtpWhatsapp(
                                    widget.phoneNumber,
                                    getAllValuesAsString(),
                                  ));
                            }
                          }
                        },
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
                            if (isOtpSms) {
                              context
                                  .read<ChangePasswordSendOtpSmsBloc>()
                                  .add(ChangePasswordSendOtpSmsEvent.sendOtpSms(
                                    widget.phoneNumber,
                                    widget.timeLimit.toString(),
                                  ));
                            } else {
                              context
                                  .read<ChangePasswordSendOtpWhatsappBloc>()
                                  .add(ChangePasswordSendOtpWhatsappEvent
                                      .sendOtpWhatsapp(
                                    widget.phoneNumber,
                                    widget.timeLimit.toString(),
                                  ));
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
                "Do you want to change the method?",
                style: TextStyle(fontSize: 12.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  if (!isCountDownFinished) {
                    showSnackBar(
                      context,
                      "Please wait before you change the verification method",
                    );
                  } else {
                    if (!isOtpSms) {
                      setState(() => isOtpSms = true);
                      context
                          .read<ChangePasswordSendOtpSmsBloc>()
                          .add(ChangePasswordSendOtpSmsEvent.sendOtpSms(
                            widget.phoneNumber,
                            widget.timeLimit.toString(),
                          ));
                    } else {
                      setState(() => isOtpSms = false);
                      context.read<ChangePasswordSendOtpWhatsappBloc>().add(
                              ChangePasswordSendOtpWhatsappEvent
                                  .sendOtpWhatsapp(
                            widget.phoneNumber,
                            widget.timeLimit.toString(),
                          ));
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
              // TODO: temporal hide for unused feature
              // const SizedBox(height: 11),
              // InkWell(
              //   onTap: () {
              //     showSnackBar(context, "Debug message: send via sms clicked!");
              //   },
              //   child: CommonShadowedContainer(
              //     padding: const EdgeInsets.all(4),
              //     backgroundColor: ColorResource.white,
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         const Icon(Icons.phone_outlined,
              //             color: ColorResource.red),
              //         const SizedBox(width: 8),
              //         Text(
              //           "send via call".capitalize(),
              //           style: TextStyle(
              //             fontSize: 12.sp,
              //             color: ColorResource.red,
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // const Spacer(),
              // Text.rich(
              //   TextSpan(
              //     text: "Wrong number? ",
              //     children: [
              //       TextSpan(
              //         text: "Change",
              //         style: const TextStyle(
              //           fontWeight: FontWeightResource.bold,
              //           color: ColorResource.blue900,
              //         ),
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () {
              //             showSnackBar(
              //                 context, "Debug message: change clicked!");
              //           },
              //       ),
              //     ],
              //   ),
              //   style: TextStyle(fontSize: 13.sp),
              //   textAlign: TextAlign.center,
              // ),
              // const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
