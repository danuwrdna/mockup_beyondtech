import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/main.dart';
import 'package:bpay_mobile/src/auth_register_check/bloc/check_register_bloc.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_register/create_account/views/create_account_page.dart';
import 'package:bpay_mobile/src/auth_login/views/login_page.dart';
import 'package:bpay_mobile/src/navigation_profile/views/privacy_policy_page.dart';
import 'package:bpay_mobile/src/navigation_profile/views/terms_and_conditions_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:sizer/sizer.dart';

class SignCheckPage extends StatefulWidget {
  const SignCheckPage({super.key});

  @override
  State<SignCheckPage> createState() => _SignCheckPageState();
}

class _SignCheckPageState extends State<SignCheckPage> {
  TextEditingController phoneNumberController = TextEditingController();
  String countryCode = "+62";
  bool agreement = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 96, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // FlutterI18n.translate(context, "welcome_to"),
              LocaleKeys.signCheckPage_welcome_to.tr(),
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            // const SizedBox(height: 12),
            Text(
              // FlutterI18n.translate(context, "register_easy"),
              LocaleKeys.signCheckPage_register_easy.tr(),
              style: TextStyle(fontSize: 13.sp),
            ),
            // const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5.5,
                  ),
                  decoration: BoxDecoration(
                    color: ColorResource.grey200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "🇮🇩",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeightResource.medium,
                        ),
                      ),
                      // const SizedBox(width: 8),
                      Text(
                        countryCode,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.medium,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: phoneNumberController,
                    style: TextStyle(
                      fontWeight: FontWeightResource.medium,
                      fontSize: 20.sp,
                    ),
                    decoration: const InputDecoration(
                      hintText: StringResource.phoneHint,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorResource.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorResource.black),
                      ),
                    ),
                    cursorColor: ColorResource.black,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        if (value
                            .replaceAll(RegExp(r'[^0-9]'), '')
                            .startsWith(RegExp(r'^0+'))) {
                          phoneNumberController.text = value
                              .replaceAll(RegExp(r'[^0-9]'), '')
                              .replaceAll(RegExp(r'^0+'), '');
                        }
                      });
                    },
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    inputFormatters: [
                      MaskedInputFormatter("000 - 0000 - 00000"),
                    ],
                  ),
                )
              ],
            ),
            // const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SizedBox(
                    width: 12,
                    height: 12,
                    child: Checkbox(
                      splashRadius: 0,
                      value: agreement,
                      onChanged: (value) {
                        setState(() {
                          agreement = value ?? false;
                        });
                      },
                    ),
                  ),
                ),
                // const SizedBox(width: 12),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      // text: FlutterI18n.translate(context, "terms_privacy_1"),
                      text: LocaleKeys.signCheckPage_terms_privacy_1.tr(),
                      style: TextStyle(fontSize: 10.sp),
                      children: [
                        TextSpan(
                          // text: FlutterI18n.translate(context, "confirm")
                          text: LocaleKeys.boarding_confirm.tr().capitalize(),
                          style: const TextStyle(
                            fontWeight: FontWeightResource.bold,
                          ),
                        ),
                        TextSpan(
                            // text: FlutterI18n.translate(
                            //   context,
                            //   "terms_privacy_2",
                            // ),
                            text:
                                LocaleKeys.signCheckPage_terms_privacy_2.tr()),
                        TextSpan(
                          // text: FlutterI18n.translate(
                          //   context,
                          //   "terms_privacy_3",
                          // ),
                          text: LocaleKeys.signCheckPage_terms_privacy_3.tr(),
                          style: const TextStyle(
                            fontWeight: FontWeightResource.bold,
                            color: ColorResource.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const TermsAndConditionsPage();
                              }));
                            },
                        ),
                        TextSpan(
                          // text: FlutterI18n.translate(
                          //   context,
                          //   "terms_privacy_4",
                          // ),
                          text: LocaleKeys.signCheckPage_terms_privacy_4.tr(),
                        ),
                        TextSpan(
                          // text: FlutterI18n.translate(
                          //   context,
                          //   "terms_privacy_5",
                          // ),
                          text: LocaleKeys.signCheckPage_terms_privacy_5.tr(),
                          style: const TextStyle(
                            fontWeight: FontWeightResource.bold,
                            color: ColorResource.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PrivacyPolicyPage();
                              }));
                            },
                        ),
                        TextSpan(
                          // text: FlutterI18n.translate(
                          //   context,
                          //   "terms_privacy_6",
                          // ),
                          text: LocaleKeys.signCheckPage_terms_privacy_6.tr(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // const SizedBox(height: 40),
            // BlocListener<CheckRegisterBloc, CheckRegisterState>(
            //   listener: (context, state) {
            //     state.whenOrNull(
            //       loading: () {
            //         showDialog(
            //           barrierDismissible: false,
            //           context: context,
            //           builder: (context) => const LoadingDialog(),
            //         );
            //       },
            //       registered: () {
            //         Navigator.pop(context);
            //         showDialog(
            //           barrierDismissible: false,
            //           context: context,
            //           builder: (context) {
            //             return Dialog(
            //               insetPadding: const EdgeInsets.symmetric(
            //                 horizontal: 20,
            //               ),
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.symmetric(
            //                   vertical: 32,
            //                   horizontal: 16,
            //                 ),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  // FlutterI18n.translate(
                                  //   context,
                                  //   "registered",
                                  // ),
                                  LocaleKeys.signCheckPage_registered.tr(),
                                  style: TextStyle(fontSize: 15.sp),
                                  textAlign: TextAlign.center,
                                ),
                                // const SizedBox(height: 32),
                                AppFilledButton(
                                  // text: FlutterI18n.translate(
                                  //   context,
                                  //   "ok_continue",
                                  // ),
                                  text:
                                      LocaleKeys.signCheckPage_ok_continue.tr(),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const LoginPage();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                         
                  // notRegistered: () {
                  //   Navigator.pop(context);
                  //   showDialog(
                  //     barrierDismissible: false,
                  //     context: context,
                  //     builder: (context) {
                  //       return 
                  Dialog(
                          insetPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 32,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  // FlutterI18n.translate(
                                  //   context,
                                  //   "unregistered",
                                  // ),
                                  LocaleKeys.signCheckPage_unregistered.tr(),
                                  style: TextStyle(fontSize: 15.sp),
                                  textAlign: TextAlign.center,
                                ),
                                // const SizedBox(height: 32),
                                AppFilledButton(
                                  // text: FlutterI18n.translate(
                                  //   context,
                                  //   "ok_continue",
                                  // ),
                                  text: LocaleKeys.boarding_continue.tr(),
                                  onPressed: () {
                                    String phoneNumber = (countryCode +
                                            phoneNumberController.text)
                                        .replaceAll(RegExp(r'[^0-9]'), '');
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return CreateAccountPage(
                                            phoneNumber: phoneNumber,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                  ),
            SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  onPressed: (){},
                  // onPressed: agreement && phoneNumberController.text.isNotEmpty
                  //     ? () {
                  //         String phoneNumber =
                  //             (countryCode + phoneNumberController.text)
                  //                 .replaceAll(RegExp(r'[^0-9]'), '');
                  //         context
                  //             .read<CheckRegisterBloc>()
                  //             .add(CheckRegisterEvent.onCheck(phoneNumber));
                  //       }
                  //     : null,
                  // text: FlutterI18n.translate(context, "confirm").capitalize(),
                  text: LocaleKeys.boarding_confirm.tr(),
                  radius: 16,
                ),
              ),
            
            const SizedBox(height: 36),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: ColorResource.blue300,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Assets.icons.icCaution.image(width: 38, height: 38),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // FlutterI18n.translate(context, "beware_scam"),
                          LocaleKeys.signCheckPage_beware_scam.tr(),
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        const SizedBox(height: 4),
                        InkWell(
                          child: Text(
                            // FlutterI18n.translate(context, "learn_more"),
                            LocaleKeys.signCheckPage_learn_more.tr(),
                            style: TextStyle(
                              color: ColorResource.primary,
                              fontSize: 11.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          onTap: () {
                            showSnackBar(
                              context,
                              "Debug message: learn more clicked!",
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Center(child: Assets.icons.icLogo.image(height: 24)),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
