import 'package:bpay_mobile/src/enter_pin_dialog/bloc/check_pin_general_bloc.dart';
import 'package:bpay_mobile/widgets/pin_input_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class EnterPinDialog extends StatefulWidget {
  const EnterPinDialog({super.key, required this.onPinSuccess});

  final Function(String pin) onPinSuccess;

  @override
  State<EnterPinDialog> createState() => _EnterPinDialogState();
}

class _EnterPinDialogState extends State<EnterPinDialog> {
  String pin = "";
  TextEditingController pinController = TextEditingController();
  bool isNotValid = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocListener<CheckPinGeneralBloc, CheckPinGeneralState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: () {
              Navigator.pop(context);
              widget.onPinSuccess(pin);
            },
            failed: (message) {
              if (kDebugMode) print(message);
              if (message.toLowerCase().contains("wrong")) {
                setState(() => isNotValid = true);
                showSnackBar(
                  context,
                  "Pin is not correct",
                );
              } else {
                showSnackBar(
                  context,
                  "An unexpected error occurred. Please contact our support.",
                );
              }
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "help us to complete your transaction.".capitalize(),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              Text(
                "Please enter your PIN",
                style: TextStyle(fontSize: 12.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              PinInputWidget(
                isNotValid: isNotValid,
                pin: pin,
                controller: pinController,
                onChange: (value) {
                  setState(() => pin = value);
                  if (value.length == 6) {
                    context
                        .read<CheckPinGeneralBloc>()
                        .add(CheckPinGeneralEvent.checkPin(value));
                  } else {
                    setState(() => isNotValid = false);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
