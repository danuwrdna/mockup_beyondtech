import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_register/create_account/bloc/check_email_username/check_email_username_bloc.dart';
import 'package:bpay_mobile/src/auth_register/create_account/models/create_account_model.dart';
import 'package:bpay_mobile/src/auth_register/create_account/models/email_username_existence_enum.dart';
import 'package:bpay_mobile/src/auth_register/create_account/models/find_referral_response_model.dart';
import 'package:bpay_mobile/src/auth_register/create_account/widgets/referral_bottom_sheet.dart';
import 'package:bpay_mobile/src/auth_register/create_pin/views/create_pin_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;
  bool isSignUpLoading = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String? usernameError;
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;
  RespStatusData? referral;

  void validateUsername(String value) {
    if (value.isEmpty) {
      setState(() => usernameError = 'Please enter your username');
    } else if (value.length < 7) {
      setState(
        () => usernameError = 'Username must be at least 7 characters long',
      );
    } else if (value.length > 20) {
      setState(
        () => usernameError = 'Username must be no more than 20 characters long',
      );
    } else if (hasForbiddenCharacter(value)) {
      setState(
        () => usernameError =
            'Username contains forbidden characters !@#\$%^&*?|{};”~<>,./" \'`',
      );
    } else {
      setState(() => usernameError = null);
    }
  }

  void validateEmail(String value) {
    if (value.isEmpty) {
      setState(() => emailError = 'Please enter your email');
    } else {
      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
      if (!emailRegex.hasMatch(value)) {
        setState(() => emailError = 'Please enter a valid email address');
      } else {
        setState(() => emailError = null);
      }
    }
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      setState(() => passwordError = 'Please enter your password');
    } else if (value.length < 7) {
      setState(
        () => passwordError = 'Password must be at least 7 characters long',
      );
    } else {
      setState(() => passwordError = null);
    }
  }

  void validateConfirmPassword(String value) {
    if (value.isEmpty) {
      setState(() => confirmPasswordError = 'Please confirm your password');
    } else if (value != passwordController.text) {
      setState(() => confirmPasswordError = 'Passwords do not match');
    } else {
      setState(() => confirmPasswordError = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "create account".capitalizeEach(),
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
        padding: const EdgeInsets.fromLTRB(20, 36, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabeledTextField(
              controller: usernameController,
              labelText: "Username",
              color: ColorResource.primary,
              hintText: "username123",
              onChanged: (value) => setState(() => usernameError = null),
              errorText: usernameError,
            ),
            const SizedBox(height: 24),
            LabeledTextField(
              controller: emailController,
              labelText: "Email",
              color: ColorResource.primary,
              hintText: "example@email.com",
              onChanged: (value) => setState(() => emailError = null),
              errorText: emailError,
            ),
            const SizedBox(height: 24),
            LabeledTextField(
              controller: passwordController,
              labelText: "Password",
              color: ColorResource.primary,
              hintText: "**********",
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isPasswordHidden = !isPasswordHidden;
                  });
                },
                child: isPasswordHidden
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
              obscureText: isPasswordHidden,
              onChanged: (value) => setState(() => passwordError = null),
              errorText: passwordError,
            ),
            const SizedBox(height: 24),
            LabeledTextField(
              controller: confirmPasswordController,
              labelText: "Confirm Password",
              color: ColorResource.primary,
              hintText: "**********",
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isConfirmPasswordHidden = !isConfirmPasswordHidden;
                  });
                },
                child: isConfirmPasswordHidden
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              ),
              obscureText: isConfirmPasswordHidden,
              onChanged: (value) => setState(() => confirmPasswordError = null),
              errorText: confirmPasswordError,
            ),
            const SizedBox(height: 24),
            if (referral != null) ...[
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: ColorResource.blue300,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorResource.green500,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: ColorResource.blue300,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Referral Code Applied",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.green500,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "${referral?.referralCodeName}",
                            style: TextStyle(fontSize: 11.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ] else ...[
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ReferralBottomSheet(
                        onReferralFound: (referralData) {
                          setState(() => referral = referralData);
                        },
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Assets.icons.icConnect),
                    const SizedBox(width: 12),
                    Text(
                      "I have a referral code >",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeightResource.medium,
                        color: ColorResource.blue900,
                      ),
                    )
                  ],
                ),
              ),
            ],
            const Spacer(),
            // BlocListener<CheckEmailUsernameBloc, CheckEmailUsernameState>(
            //   listener: (context, state) {
            //     state.when(
            //       initial: () {
            //         setState(() => isSignUpLoading = false);
            //       },
            //       loading: () {
            //         setState(() => isSignUpLoading = true);
            //       },
            //       available: () {
            //         setState(() => isSignUpLoading = false);
            //         CreateAccountModel data = CreateAccountModel(
            //           username: usernameController.text,
            //           email: emailController.text,
            //           password: passwordController.text,
            //           phoneNumber: widget.phoneNumber,
            //           pin: null,
            //           referralCode: referral?.referralCode,
            //         );
            //         showDialog(
            //           context: context,
            //           builder: (context) {
            //             return ConfirmationDialog(
            //               message: "Is The Data You Entered Correct?",
            //               primaryButtonText: "Yes, Continue",
            //               primaryButtonPressed: () {
            //                 Navigator.pop(context);
            //                 Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                     builder: (context) {
            //                       return CreatePinPage(accountData: data);
            //                     },
            //                   ),
            //                 );
            //               },
            //               secondaryButtonText: "No, Go Back",
            //               secondaryButtonPressed: () => Navigator.pop(context),
            //             );
            //           },
            //         );
            //       },
            //       notAvailable: (existence) {
            //         setState(() => isSignUpLoading = false);
            //         switch (existence) {
            //           case EmailUsernameExistence.emailAndUsername:
            //             setState(() {
            //               emailError = "email already registered";
            //               usernameError = "username already registered";
            //             });
            //             break;
            //           case EmailUsernameExistence.email:
            //             setState(() => emailError = "email already registered");
            //             break;
            //           case EmailUsernameExistence.username:
            //             setState(
            //               () => usernameError = "username already registered",
            //             );
            //             break;
            //         }
            //       },
            //       error: (message) {
            //         setState(() => isSignUpLoading = false);
            //         showSnackBar(context, message);
            //       },
            //     );
            //   },
               SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Sign Up",
                  onPressed: () {
                    validateUsername(usernameController.text);
                    validateEmail(emailController.text);
                    validatePassword(passwordController.text);
                    validateConfirmPassword(confirmPasswordController.text);
                    if (usernameError == null &&
                        emailError == null &&
                        passwordError == null &&
                        confirmPasswordError == null) {
                      // context.read<CheckEmailUsernameBloc>().add(
                      //       CheckEmailUsernameEvent.checkEmailUsername(
                      //         emailController.text,
                      //         usernameController.text,
                      //       ),
                      //     );
                    }
                  },
                  radius: 8,
                  isLoading: isSignUpLoading,
                ),
              ),
            
            const SizedBox(height: 56),
            Center(child: Assets.icons.icLogo.image(height: 24)),
          ],
        ),
      ),
    );
  }
}
