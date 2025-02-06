import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/auth_forgot_password/otp_verification/bloc/forgot_pass_bloc.dart';
import 'package:bpay_mobile/src/auth_forgot_password/otp_verification/views/forgot_pass_otp_verification_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_multi_formatter/widgets/country_flag.dart';
import 'package:sizer/sizer.dart';

class ForgotPassPhoneVerificationPage extends StatefulWidget {
  const ForgotPassPhoneVerificationPage({super.key});

  @override
  State<ForgotPassPhoneVerificationPage> createState() =>
      _ForgotPassPhoneVerificationPageState();
}

class _ForgotPassPhoneVerificationPageState
    extends State<ForgotPassPhoneVerificationPage> {
  TextEditingController phoneNumberController = TextEditingController();
  String countryCode = "+62";
  int timeLimit = 120;
  String? phoneNumber;
  String? resetToken;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          LocaleKeys.loginPage_Forgotpass.tr(),
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
      // body: BlocListener<ForgotPassBloc, ForgotPassState>(
      //   listener: (context, state) {
      //     state.when(
      //       initial: () {},
      //       loading: () => const CustomLoadingWidget(),
      //       success: (data) {
      //         resetToken = data.data.data.token;

      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return ForgotPassOtpVerificationPage(
      //                 timeLimit: timeLimit,
      //                 phoneNumber: phoneNumber ?? "",
      //                 resetToken: resetToken ?? "",
      //               );
      //             },
      //           ),
      //         );
      //       },
      //       failed: (message) {
      //         showSnackBar(context, message);
      //       },
      //     );
      //   },
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Assets.images.imgForgotPass1.image(scale: 2),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.forgotPassPage_page1_please_input_phone.tr(),
                style: TextStyle(
                  color: ColorResource.blue850,
                  fontSize: 13.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                LocaleKeys.forgotPassPage_page1_we_will_send.tr(),
                style: TextStyle(fontSize: 11.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
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
                        const CountryFlag(
                          countryId: "id",
                          height: 16,
                          width: 24,
                        ),
                        const SizedBox(width: 8),
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
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: phoneNumberController,
                      style: TextStyle(
                        fontWeight: FontWeightResource.medium,
                        fontSize: 20.sp,
                      ),
                      decoration: InputDecoration(
                        hintText: StringResource.phoneHint,
                        hintStyle: TextStyle(
                          color: ColorResource.black100.withOpacity(0.48),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorResource.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
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
              const SizedBox(height: 40),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Confirm",
                  onPressed: () {},
                  // onPressed: phoneNumberController.text.isNotEmpty
                  //     ? () {
                  //         phoneNumber =
                  //             (countryCode + phoneNumberController.text)
                  //                 .replaceAll(RegExp(r'[^0-9]'), '');

                  //         context.read<ForgotPassBloc>().add(
                  //             ForgotPassEvent.forgotPass(phoneNumber ?? ""));

                  //         // context.read<SendOtpSmsBloc>().add(
                  //         //       SendOtpSmsEvent.sendOtpSms(
                  //         //         phoneNumber ?? "",
                  //         //         timeLimit.toString(),
                  //         //       ),
                  //         //     );
                  //       }
                  //     : null,
                  radius: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
