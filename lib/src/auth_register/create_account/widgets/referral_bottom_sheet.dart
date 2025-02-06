import 'package:bpay_mobile/src/auth_register/create_account/bloc/referral/referral_bloc.dart';
import 'package:bpay_mobile/src/auth_register/create_account/models/find_referral_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ReferralBottomSheet extends StatefulWidget {
  const ReferralBottomSheet({
    super.key,
    required this.onReferralFound,
  });

  final Function(RespStatusData? referralData) onReferralFound;

  @override
  State<ReferralBottomSheet> createState() => _ReferralBottomSheetState();
}

class _ReferralBottomSheetState extends State<ReferralBottomSheet> {
  TextEditingController referralController = TextEditingController();
  bool isFindReferralLoading = false;
  String? referralError;

  @override
  Widget build(BuildContext context) {
    // return BlocListener<ReferralBloc, ReferralState>(
    //   listener: (context, state) {
    //     state.when(
    //       initial: () {
    //         setState(() => isFindReferralLoading = false);
    //       },
    //       loading: () {
    //         setState(() => isFindReferralLoading = true);
    //       },
    //       success: (data) {
    //         setState(() => isFindReferralLoading = false);
    //         widget.onReferralFound(data.data?.respStatus?.data);
    //         Navigator.pop(context);
    //       },
    //       error: (message) {
    //         setState(() => isFindReferralLoading = false);
    //         setState(() => referralError = message);
    //       },
    //     );
    //   },
      return BottomSheet(
        showDragHandle: true,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).viewInsets.bottom + 280,
        ),
        onClosing: () {},
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Input Referral Code",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.medium,
                  ),
                ),
                const SizedBox(height: 6),
                LabeledTextField(
                  controller: referralController,
                  enabledColor: ColorResource.grey300,
                  color: ColorResource.grey300,
                  contentPadding: const EdgeInsets.all(8),
                  hintText: "abc12345",
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    fontStyle: FontStyle.italic,
                    color: ColorResource.grey300,
                  ),
                  style: TextStyle(fontSize: 12.sp),
                  suffixIcon: isFindReferralLoading
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(),
                        )
                      : null,
                  errorText: referralError,
                  onChanged: (value) => setState(() => referralError = null),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: SizedBox(
                    width: 100.w,
                    child: AppFilledButton(
                      text: "Use Code",
                      radius: 16,
                      onPressed: () {
                        // context.read<ReferralBloc>().add(
                        //       ReferralEvent.find(referralController.text),
                        //     );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );
  }
}
