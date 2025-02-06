import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/auth_forgot_password/phone_verification/views/forgot_pass_phone_verification_page.dart';
import 'package:bpay_mobile/src/auth_login/bloc/login_bloc.dart';
import 'package:bpay_mobile/src/navigation/views/navigation.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailOrPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;
  String? emailError;
  String? passwordError;

  void validateEmail(String value) {
    if (value.isEmpty) {
      setState(() => emailError = LocaleKeys.loginPage_please_enter_phone.tr());
    }
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      setState(
          () => passwordError = LocaleKeys.loginPage_please_enter_pass.tr());
    } else if (value.length < 7) {
      setState(
        () => passwordError = LocaleKeys.loginPage_password_must_be.tr(),
      );
    } else {
      setState(() => passwordError = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 33.h,
                      child: Assets.images.imgLoginBackground.image(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: 110,
                        minWidth: 100.w,
                      ),
                      child: SvgPicture.asset(
                        Assets.images.imgLoginShape1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 140),
                        Text(
                          LocaleKeys.loginPage_welcome_back.tr(),
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.primary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          LocaleKeys.loginPage_securely_access.tr(),
                          style: TextStyle(fontSize: 12.sp),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 60),
                  LabeledTextField(
                    controller: emailOrPhoneController,
                    labelText: LocaleKeys.loginPage_phone_email.tr(),
                    hintText: "example@gmail.com",
                    color: ColorResource.primary,
                    errorText: emailError,
                    onChanged: (value) {
                      emailError = null;
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 32),
                  LabeledTextField(
                    controller: passwordController,
                    labelText: LocaleKeys.loginPage_Password.tr(),
                    hintText: "**********",
                    color: ColorResource.primary,
                    suffixIcon: InkWell(
                      onTap: () => setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      }),
                      child: isPasswordHidden
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                    ),
                    obscureText: isPasswordHidden,
                    errorText: passwordError,
                    onChanged: (value) {
                      passwordError = null;
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ForgotPassPhoneVerificationPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      LocaleKeys.loginPage_Forgotpass.tr(),
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontStyle: FontStyle.italic,
                        color: ColorResource.black100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  // BlocListener<LoginBloc, LoginState>(
                  //   listener: (context, state) {
                  //     state.when(
                  //       initial: () {},
                  //       loading: () {
                  //         showDialog(
                  //           barrierDismissible: false,
                  //           context: context,
                  //           builder: (context) => const LoadingDialog(),
                  //         );
                  //       },
                  //       success: (data) {
                  //         Navigator.pop(context);
                  //         Navigator.pushAndRemoveUntil(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const Navigation(),
                  //           ),
                  //           (route) => false,
                  //         );
                  //       },
                  //       error: (message) {
                  //         Navigator.pop(context);
                  //         showSnackBar(context, message);
                  //       },
                  //     );
                  //   },
                  SizedBox(
                    width: 100.w,
                    child: AppFilledButton(
                      text: LocaleKeys.loginPage_Login.tr(),
                      onPressed: () {
                        validateEmail(emailOrPhoneController.text.trim());
                        validatePassword(passwordController.text.trim());
                        if (emailError == null && passwordError == null) {
                          String phoneOrEmail =
                              emailOrPhoneController.text.trim();
                          if (phoneOrEmail.startsWith(RegExp(r'^0+'))) {
                            phoneOrEmail =
                                phoneOrEmail.replaceAll(RegExp(r'^0+'), "62");
                          }
                          // context.read<LoginBloc>().add(
                          //       LoginEvent.login(
                          //         phoneOrEmail,
                          //         passwordController.text.trim(),
                          //       ),
                          //     );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Navigation()),
                          );
                        }
                      },
                      radius: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 15.h,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Assets.icons.icLogo.image(height: 40),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 15.h,
                width: 17.h,
                child: SvgPicture.asset(
                  Assets.images.imgLoginShape2,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
