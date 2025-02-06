import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/check_password/check_password_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/phone_number/check_password_phone_number_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/send_otp_initial/change_password_send_otp_initial_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/views/otp_change_password_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/social_media_widget/view/social_media_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  bool isOldPasswordHidden = true;
  bool isNewPasswordHidden = true;
  bool isConfirmNewPasswordHidden = true;
  String? oldPasswordError;
  String? newPasswordError;
  String? confirmNewPasswordError;
  String? phoneNumber;
  static const int timeLimitSeconds = 300;

  void validateOldPassword(String value) {
    if (value.isEmpty) {
      setState(() {
        oldPasswordError = 'Please enter your password';
      });
    } else if (value.length < 7) {
      setState(
        () => oldPasswordError = 'Password must be at least 7 characters',
      );
    } else {
      setState(() {
        oldPasswordError = null;
      });
    }
  }

  void validateNewPassword(String value) {
    if (value.isEmpty) {
      setState(() => newPasswordError = 'Please Enter Password');
    } else if (value.length < 7) {
      setState(
        () => newPasswordError = 'Password must be at least 7 characters long',
      );
    } else if (value.length > 20) {
      setState(
        () => newPasswordError = 'Password maximum 20 character',
      );
    } else {
      setState(() {
        newPasswordError = null;
      });
    }
  }

  void validateConfirmNewPassword(String value) {
    if (value.isEmpty) {
      setState(() => confirmNewPasswordError = 'Please confirm your password');
    } else if (value != newPasswordController.text) {
      setState(() {
        confirmNewPasswordError = 'Password does not match';
      });
    } else {
      setState(() {
        confirmNewPasswordError = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "change password".capitalizeEach(),
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
          child: Column(children: [
            const SizedBox(height: 36),
            LabeledTextField(
              controller: oldPasswordController,
              labelText: "Old Password",
              color: ColorResource.primary,
              hintText: "**********",
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isOldPasswordHidden = !isOldPasswordHidden;
                  });
                },
                child: isOldPasswordHidden
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
              obscureText: isOldPasswordHidden,
              errorText: oldPasswordError,
              onChanged: (value) {
                setState(() {
                  oldPasswordError = null;
                });
              },
            ),
            const SizedBox(height: 24),
            LabeledTextField(
              controller: newPasswordController,
              labelText: "New Password",
              color: ColorResource.primary,
              hintText: "**********",
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isNewPasswordHidden = !isNewPasswordHidden;
                  });
                },
                child: isNewPasswordHidden
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
              obscureText: isNewPasswordHidden,
              errorText: newPasswordError,
              onChanged: (value) {
                setState(() {
                  newPasswordError = null;
                });
              },
            ),
            const SizedBox(height: 24),
            LabeledTextField(
              controller: confirmNewPasswordController,
              labelText: "Confirm New Password",
              color: ColorResource.primary,
              hintText: "**********",
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isConfirmNewPasswordHidden = !isConfirmNewPasswordHidden;
                  });
                },
                child: isConfirmNewPasswordHidden
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
              obscureText: isConfirmNewPasswordHidden,
              errorText: confirmNewPasswordError,
              onChanged: (value) {
                setState(() {
                  confirmNewPasswordError = null;
                });
              },
            ),
            const SizedBox(height: 40),
            // MultiBlocListener(
            //   listeners: [
            //     BlocListener<CheckPasswordBloc, CheckPasswordState>(
            //       listener: (context, state) {
            //         state.when(
            //           initial: () {},
            //           loading: () {
            //             showDialog(
            //               barrierDismissible: false,
            //               context: context,
            //               builder: (context) => const LoadingDialog(),
            //             );
            //           },
            //           isCorrect: () {
            //             context.read<CheckPasswordPhoneNumberBloc>().add(
            //                 const CheckPasswordPhoneNumberEvent
            //                     .getPhoneNumber());
            //           },
            //           failed: (message) {
            //             Navigator.pop(context);
            //             if (message.toLowerCase().contains('wrong')) {
            //               setState(() {
            //                 oldPasswordError = message;
            //               });
            //             } else if (message
            //                 .toLowerCase()
            //                 .contains('different')) {
            //               setState(() {
            //                 newPasswordError = message;
            //               });
            //             } else {
            //               showSnackBar(context, message);
            //             }
            //           },
            //         );
            //       },
            //     ),
            //     BlocListener<CheckPasswordPhoneNumberBloc,
            //         CheckPasswordPhoneNumberState>(
            //       listener: (context, state) {
            //         state.when(
            //           initial: () {},
            //           loading: () {},
            //           success: (data) {
            //             setState(() {
            //               phoneNumber = data.data?.data?.phoneNumber;
            //             });
            //             context.read<ChangePasswordSendOtpInitialBloc>().add(
            //                     ChangePasswordSendOtpInitialEvent
            //                         .sendOtpInitial(
            //                   phoneNumber ?? "",
            //                   timeLimitSeconds.toString(),
            //                 ));
            //           },
            //           failed: (message) {
            //             Navigator.pop(context);
            //             if (kDebugMode) print(message);
            //             showSnackBar(context, message);
            //           },
            //         );
            //       },
            //     ),
            //     BlocListener<ChangePasswordSendOtpInitialBloc,
            //         ChangePasswordSendOtpInitialState>(
            //       listener: (context, state) {
            //         state.when(
            //           initial: () {},
            //           loading: () {},
            //           success: () {
            //             Navigator.pop(context);
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => OtpPasswordChangePage(
            //                   oldPassword: oldPasswordController.text,
            //                   newPassword: newPasswordController.text,
            //                   timeLimit: timeLimitSeconds,
            //                   phoneNumber: phoneNumber ?? "",
            //                 ),
            //               ),
            //             );
            //           },
            //           failed: (message) {
            //             Navigator.pop(context);
            //             if (kDebugMode) print(message);
            //             showSnackBar(context, message);
            //           },
            //         );
            //       },
            //     ),
            //   ],
            SizedBox(
              width: 100.w,
              child: AppFilledButton(
                  text: "Confirm",
                  onPressed: () {
                    validateOldPassword(oldPasswordController.text);
                    validateNewPassword(newPasswordController.text);
                    validateConfirmNewPassword(
                        confirmNewPasswordController.text);
                    if (oldPasswordError == null &&
                        newPasswordError == null &&
                        confirmNewPasswordError == null) {
                      // context.read<CheckPasswordBloc>().add(
                      //       CheckPasswordEvent.checkPassword(
                      //         oldPasswordController.text,
                      //         newPasswordController.text,
                      //       ),
                      //     );
                    }
                  }),
            ),

            // const Spacer(),
            // const SocialMediaWidget(),
          ]) // const SizedBox(height: 40),

          ),
    );
  }
}
