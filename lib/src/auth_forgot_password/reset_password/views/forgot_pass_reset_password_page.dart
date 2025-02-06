// import 'package:bpay_mobile/gen/assets.gen.dart';
// import 'package:bpay_mobile/gen/locale_keys.g.dart';
// import 'package:bpay_mobile/main.dart';
// import 'package:bpay_mobile/src/auth_forgot_password/reset_password/bloc/reset_pass_bloc.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:bpay_mobile/widgets/app_filled_button.dart';
// import 'package:bpay_mobile/widgets/labeled_text_field.dart';
// import 'package:bpay_mobile/widgets/success_dialog.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sizer/sizer.dart';

// class ForgotPassResetPasswordPage extends StatefulWidget {
//   const ForgotPassResetPasswordPage({
//     super.key,
//     required this.resetToken,
//   });

//   final String resetToken;

//   @override
//   State<ForgotPassResetPasswordPage> createState() =>
//       _ForgotPassResetPasswordPageState();
// }

// class _ForgotPassResetPasswordPageState
//     extends State<ForgotPassResetPasswordPage> {
//   TextEditingController newPasswordController = TextEditingController();
//   TextEditingController confirmNewPasswordController = TextEditingController();
//   bool isNewPasswordHidden = true;
//   bool isConfirmNewPasswordHidden = true;
//   String? newPasswordError;
//   String? confirmNewPasswordError;

//   void validateNewPassword(String value) {
//     if (value.isEmpty) {
//       newPasswordError = 'Password can not be empty';
//     } else if (value.length < 7) {
//       newPasswordError = 'Password must be at least 7 characters long';
//     } else if (value.length > 20) {
//       newPasswordError = 'Password maximum 20 character';
//     } else {
//       newPasswordError = null;
//     }
//     setState(() {});
//   }

//   void validateConfirmNewPassword(String value) {
//     if (value.isEmpty) {
//       confirmNewPasswordError = 'Please confirm your password';
//     } else if (value != newPasswordController.text) {
//       confirmNewPasswordError = 'Password does not match';
//     } else if (value.length < 7) {
//       newPasswordError = 'Password must be at least 7 characters long';
//     } else {
//       confirmNewPasswordError = null;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         toolbarHeight: 64,
//         title: Text(
//           LocaleKeys.forgotPassPage_page2_otp_verif_title.tr(),
//           style: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeightResource.semiBold,
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(Icons.arrow_back_ios_new),
//         ),
//         shadowColor: ColorResource.black100.withOpacity(0.16),
//         elevation: 4,
//         surfaceTintColor: ColorResource.white,
//       ),
//       body: BlocListener<ResetPassBloc, ResetPassState>(
//         listener: (context, state) {
//           state.when(
//             initial: () {},
//             loading: () {},
//             success: () async {
//               showDialog(
//                 barrierDismissible: false,
//                 context: context,
//                 builder: (context) {
//                   return const SuccessDialog(
//                     message: "Success! Your password was successfully changed",
//                   );
//                 },
//               );
//               await Future.delayed(const Duration(seconds: 2));
//               if (context.mounted) {
//                 Navigator.pop(context);
//                 Navigator.popUntil(context, (route) => route.isFirst);
//               }
//             },
//             failed: (message) {
//               Navigator.pop(context);
//             },
//           );
//         },
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 Assets.images.imgForgotPass2.image(scale: 2),
//                 const SizedBox(height: 40),
//                 Text(
//                   LocaleKeys.forgotPassPage_page3_new_pass.tr(),
//                   style: TextStyle(
//                     fontSize: 13.sp,
//                     fontWeight: FontWeightResource.semiBold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 40),
//                 LabeledTextField(
//                   controller: newPasswordController,
//                   labelText:
//                       LocaleKeys.forgotPassPage_page3_new_pass.tr(),
//                   color: ColorResource.primary,
//                   hintText: "**********",
//                   suffixIcon: InkWell(
//                     onTap: () {
//                       setState(() {
//                         isNewPasswordHidden = !isNewPasswordHidden;
//                       });
//                     },
//                     child: isNewPasswordHidden
//                         ? const Icon(Icons.visibility_outlined)
//                         : const Icon(Icons.visibility_off_outlined),
//                   ),
//                   obscureText: isNewPasswordHidden,
//                   errorText: newPasswordError,
//                   onChanged: (value) {
//                     if (newPasswordError != null) {
//                       setState(() => newPasswordError = null);
//                     }
//                   },
//                 ),
//                 const SizedBox(height: 28),
//                 LabeledTextField(
//                   controller: confirmNewPasswordController,
//                   labelText:
//                       LocaleKeys.forgotPassPage_page3_confirm_newpass.tr(),
//                   color: ColorResource.primary,
//                   hintText: "**********",
//                   suffixIcon: InkWell(
//                     onTap: () {
//                       setState(() {
//                         isConfirmNewPasswordHidden =
//                             !isConfirmNewPasswordHidden;
//                       });
//                     },
//                     child: isConfirmNewPasswordHidden
//                         ? const Icon(Icons.visibility_outlined)
//                         : const Icon(Icons.visibility_off_outlined),
//                   ),
//                   obscureText: isConfirmNewPasswordHidden,
//                   errorText: confirmNewPasswordError,
//                   onChanged: (value) {
//                     if (confirmNewPasswordError != null) {
//                       setState(() => confirmNewPasswordError = null);
//                     }
//                   },
//                 ),
//                 const SizedBox(height: 40),
//                 SizedBox(
//                   width: 100.w,
//                   child: AppFilledButton(
//                     text: LocaleKeys.boarding_confirm.tr(),
//                     onPressed: () {
//                       validateNewPassword(newPasswordController.text);
//                       validateConfirmNewPassword(
//                           confirmNewPasswordController.text);

//                       if (newPasswordError != null ||
//                           confirmNewPasswordError != null) {
//                         return;
//                       }

//                       context
//                           .read<ResetPassBloc>()
//                           .add(ResetPassEvent.resetPass(
//                             widget.resetToken,
//                             newPasswordController.text,
//                             confirmNewPasswordController.text,
//                           ));
//                     },
//                     radius: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
