import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/bloc/phone_number/check_pin_phone_number_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/bloc/send_otp_initial/change_pin_send_otp_initial_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/models/change_pin_state_enum.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/views/otp_change_pin_page.dart';
import 'package:bpay_mobile/widgets/app_number_keyboard_widget.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../bloc/check_pin/check_pin_bloc.dart';

class ChangePinPage extends StatefulWidget {
  const ChangePinPage({
    super.key,
    required this.state,
    this.newPin,
    this.oldPin,
  });

  final ChangePinState state;
  final String? newPin;
  final String? oldPin;

  @override
  State<ChangePinPage> createState() => _ChangePinPageState();
}

class _ChangePinPageState extends State<ChangePinPage> {
  List<int> pin = [];
  bool isNotValid = false;
  String? phoneNumber;
  static const int timeLimitSeconds = 300;

  void notValid() async {
    setState(() {
      isNotValid = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      isNotValid = false;
      pin.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorResource.grey100,
        child: Stack(children: [
          Container(
            width: 100.w,
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ColorResource.blue900, ColorResource.blue700],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              toolbarHeight: 64,
              title: Text(
                () {
                  switch (widget.state) {
                    case ChangePinState.oldPin:
                      return "Change PIN";
                    case ChangePinState.newPin:
                      return "Create PIN";
                    case ChangePinState.confirmNewPin:
                      return "Repeat PIN";
                    default:
                      return "Change PIN";
                  }
                }(),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                  color: ColorResource.white,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: ColorResource.white,
                ),
              ),
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            // body: MultiBlocListener(
            //   listeners: [
            //     BlocListener<CheckPinBloc, CheckPinState>(
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
            //             Navigator.pop(context);
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => ChangePinPage(
            //                   state: ChangePinState.newPin,
            //                   oldPin: pin.join(),
            //                 ),
            //               ),
            //             );
            //           },
            //           failed: (message) {
            //             Navigator.pop(context);
            //             notValid();
            //           },
            //         );
            //       },
            //     ),
            //     BlocListener<CheckPinPhoneNumberBloc, CheckPinPhoneNumberState>(
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
            //           success: (data) {
            //             setState(() {
            //               phoneNumber = data.data?.data?.phoneNumber;
            //             });
            //             context
            //                 .read<ChangePinSendOtpInitialBloc>()
            //                 .add(ChangePinSendOtpInitialEvent.sendOtpInitial(
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
            //     BlocListener<ChangePinSendOtpInitialBloc,
            //         ChangePinSendOtpInitialState>(
            //       listener: (context, state) {
            //         state.when(
            //           initial: () {},
            //           loading: () {},
            //           success: () {
            //             Navigator.pop(context);
            //             Navigator.pop(context);
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => OtpChangePinPage(
            //                   oldPin: widget.oldPin!,
            //                   newPin: widget.newPin!,
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
            body: Column(
              children: [
                SizedBox(
                  height: 280,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          () {
                            switch (widget.state) {
                              case ChangePinState.oldPin:
                                return "help us secure your account"
                                    .capitalize();
                              case ChangePinState.newPin:
                                return "create a new PIN that nobody can guess, so your account are much safer"
                                    .capitalize();
                              case ChangePinState.confirmNewPin:
                                return "Please enter your PIN again to confirm your new PIN";
                              default:
                                return "help us secure your account"
                                    .capitalize();
                            }
                          }(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Please Enter Your PIN",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.medium,
                          color: ColorResource.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 28,
                          horizontal: 36,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: ColorResource.white,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int index = 1; index <= 6; index++)
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: isNotValid
                                        ? ColorResource.error
                                        : ColorResource.blue900,
                                    width: 1.6,
                                  ),
                                  color: isNotValid
                                      ? ColorResource.error
                                      : index <= pin.length
                                          ? ColorResource.blue900
                                          : ColorResource.grey100,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          showSnackBar(
                            context,
                            "Debug message: forgot pin clicked!",
                          );
                        },
                        child: Text(
                          "Forgot PIN?",
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeightResource.medium,
                            color: ColorResource.blue900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                AppNumberKeyboardWidget(
                  onNumberInput: (number) {
                    if (pin.length < 6) {
                      setState(() {
                        pin.add(number);
                      });
                    }
                  },
                  onRemove: () {
                    setState(() {
                      pin.removeLast();
                    });
                  },
                  onNext: () async {
                    if (pin.length == 6) {
                      if (widget.state == ChangePinState.oldPin) {
                        String oldPinValue = pin.join();
                        // context.read<CheckPinBloc>().add(
                        //       CheckPinEvent.checkPin(
                        //         oldPinValue,
                        //       ),
                        //     );
                        showDialog(
                          context: context,
                          builder: (context) => const LoadingDialog(),
                        );
                        Navigator.pop(context);
                      }
                      if (widget.state == ChangePinState.newPin) {
                        String newPinValue = pin.join();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ChangePinPage(
                                state: ChangePinState.confirmNewPin,
                                oldPin: widget.oldPin,
                                newPin: newPinValue,
                              );
                            },
                          ),
                        );
                      }
                      if (widget.state == ChangePinState.confirmNewPin) {
                        String confirmNewPinValue = pin.join();
                        if (confirmNewPinValue == widget.newPin) {
                          // context.read<CheckPinPhoneNumberBloc>().add(
                          //     const CheckPinPhoneNumberEvent
                          //         .getPhoneNumber());
                        } else {
                          notValid();
                          showSnackBar(context, 'Pin does not match');
                        }
                      }
                    } else {
                      notValid();
                    }
                  },
                ),
              ],
            ),
          ),
        ]));
  }
}
