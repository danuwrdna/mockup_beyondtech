// import 'package:bpay_mobile/src/auth_register/create_account/models/create_account_model.dart';
// import 'package:bpay_mobile/src/auth_register/create_pin/bloc/register_send_otp_initial_bloc.dart';
// import 'package:bpay_mobile/src/auth_register/otp_verification/views/register_otp_verification_page.dart';
// import 'package:bpay_mobile/widgets/loading_dialog.dart';
// import 'package:bpay_mobile/widgets/pin_input_widget.dart';
// import 'package:bpay_mobile/widgets/snackbar.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sizer/sizer.dart';

// class CreatePinPage extends StatefulWidget {
//   const CreatePinPage({
//     super.key,
//     this.isRepeatPin = false,
//     this.prevPin,
//     required this.accountData,
//   });

//   final bool isRepeatPin;
//   final String? prevPin;
//   final CreateAccountModel accountData;

//   @override
//   State<CreatePinPage> createState() => _CreatePinPageState();
// }

// class _CreatePinPageState extends State<CreatePinPage> {
//   String pin = "";
//   TextEditingController pinController = TextEditingController();
//   bool isNotValid = false;
//   static const int timeLimitSeconds = 300;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 64,
//         title: Text(
//           widget.isRepeatPin ? "Repeat PIN" : "Create PIN",
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
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
//         child: Column(
//           children: [
//             Text(
//               widget.isRepeatPin
//                   ? "Re-enter the 6 digit PIN that you just created."
//                   : "Create a PIN that nobody can guess so your transaction and account are much safer.",
//               style: TextStyle(fontSize: 12.sp),
//             ),
//             const SizedBox(height: 34),
//             BlocListener<RegisterSendOtpInitialBloc,
//                 RegisterSendOtpInitialState>(
//               listener: (context, state) {
//                 state.when(
//                   initial: () {},
//                   loading: () {
//                     showDialog(
//                       barrierDismissible: false,
//                       context: context,
//                       builder: (context) => const LoadingDialog(),
//                     );
//                   },
//                   success: () {
//                     CreateAccountModel accountData = CreateAccountModel(
//                       email: widget.accountData.email,
//                       username: widget.accountData.username,
//                       password: widget.accountData.password,
//                       phoneNumber: widget.accountData.phoneNumber,
//                       pin: widget.prevPin,
//                       referralCode: widget.accountData.referralCode,
//                     );
//                     Navigator.pop(context);
//                     Navigator.pop(context);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => RegisterOtpVerificationPage(
//                           accountData: accountData,
//                           timeLimit: timeLimitSeconds,
//                         ),
//                       ),
//                     );
//                   },
//                   failed: (message) {
//                     Navigator.pop(context);
//                     if (kDebugMode) {
//                       print(message);
//                     }
//                     showSnackBar(context, message);
//                   },
//                 );
//               },
//               child: PinInputWidget(
//                 controller: pinController,
//                 isNotValid: isNotValid,
//                 pin: pin,
//                 onChange: (value) async {
//                   setState(() {
//                     pin = value;
//                   });
//                   if (value.length == 6) {
//                     if (widget.isRepeatPin) {
//                       if (pin == widget.prevPin) {
//                         FocusManager.instance.primaryFocus?.unfocus();
//                         context
//                             .read<RegisterSendOtpInitialBloc>()
//                             .add(RegisterSendOtpInitialEvent.sendOtpWhatsapp(
//                               widget.accountData.phoneNumber,
//                               timeLimitSeconds.toString(),
//                             ));
//                       } else {
//                         setState(() => isNotValid = true);
//                         showSnackBar(
//                           context,
//                           "Pin is not correct",
//                         );
//                       }
//                     } else {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return CreatePinPage(
//                               isRepeatPin: true,
//                               prevPin: pin,
//                               accountData: widget.accountData,
//                             );
//                           },
//                         ),
//                       );
//                     }
//                   } else {
//                     setState(() => isNotValid = false);
//                   }
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
