import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_balance/bloc/verify_recipient/bloc/verify_phone_number_send_balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/nominal/views/nominal_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BalanceTransferDestinationBottomSheet extends StatefulWidget {
  const BalanceTransferDestinationBottomSheet({super.key});

  @override
  State<BalanceTransferDestinationBottomSheet> createState() =>
      _BalanceTransferDestinationBottomSheetState();
}

class _BalanceTransferDestinationBottomSheetState
    extends State<BalanceTransferDestinationBottomSheet> {
  TextEditingController phoneNumber = TextEditingController();
  String countryCode = "+62";

  RecipientData? recipientFound;

  bool? accountNumberFound;
  bool? accountNumberNotVerification;
  String? accountNumberError;

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyPhoneNumberSendBalanceBloc,
        VerifyPhoneNumberSendBalanceState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (data) {
            setState(() {
              accountNumberFound = true;
              recipientFound = data.data?.recipient;
            });
          },
          failed: (message) {
            if (message.contains("not found")) {
              setState(
                () {
                  accountNumberFound = false;
                },
              );
              if (kDebugMode) print(message);
            }
            if (message.contains("not valid")) {
              setState(
                () {
                  accountNumberNotVerification = false;
                },
              );
              if (kDebugMode) print(message);
            }
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Destination",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 11.sp),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorResource.blue900),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "+62",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.blue900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: LabeledTextField(
                          controller: phoneNumber,
                          color: ColorResource.blue900,
                          hintText: "xxx - xxxx - xxxx",
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.phone,
                          suffix: InkWell(
                            onTap: () {
                              String phoneNumberWithCountryCode =
                                  (countryCode + phoneNumber.text)
                                      .replaceAll(RegExp(r'[^0-9]'), '');
                              if (phoneNumberWithCountryCode.isEmpty) {
                                setState(
                                  () {
                                    accountNumberError =
                                        "Please input your phone number";
                                  },
                                );
                              } else {
                                context
                                    .read<VerifyPhoneNumberSendBalanceBloc>()
                                    .add(
                                      VerifyPhoneNumberSendBalanceEvent
                                          .verifyPhoneBalance(
                                              phoneNumberWithCountryCode),
                                    );
                              }
                            },
                            child: Text(
                              "Check",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.semiBold,
                                color: ColorResource.blue850,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              accountNumberFound = null;
                              accountNumberNotVerification = null;
                              accountNumberError = null;
                              recipientFound = null;
                            });
                          },
                          errorText: accountNumberError,
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: accountNumberFound == false,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ColorResource.blue300,
                        border: Border.all(color: ColorResource.blue850),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.icInfo,
                            colorFilter: const ColorFilter.mode(
                              ColorResource.blue850,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              "This number cannot receive balance because this number not registered yet.",
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeightResource.medium,
                                color: ColorResource.blue850,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: accountNumberNotVerification == false,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ColorResource.blue300,
                        border: Border.all(color: ColorResource.blue850),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.icInfo,
                            colorFilter: const ColorFilter.mode(
                              ColorResource.blue850,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              "This number cannot receive balance because this number not verified yet",
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeightResource.medium,
                                color: ColorResource.blue850,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: accountNumberFound == true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Text(
                          "Recipient",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: ColorResource.blue850,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          width: 100.w,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: ColorResource.blue400,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            recipientFound?.name ?? "",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.blue850,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 100.w,
                    child: AppFilledButton(
                      text: "Confirm",
                      radius: 16,
                      onPressed: accountNumberFound == true
                          ? () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return NominalPage(
                                      recipient:
                                          recipientFound ?? RecipientData(),
                                    );
                                  },
                                ),
                              );
                            }
                          : null,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
