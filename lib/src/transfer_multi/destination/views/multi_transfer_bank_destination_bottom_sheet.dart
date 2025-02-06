import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/bank_list/multi_transfer_bank_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/verify_recipient/multi_transfer_verify_recipient_bloc.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_dropdown_menu.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MultiTransferBankDestinationBottomSheet extends StatefulWidget {
  const MultiTransferBankDestinationBottomSheet({
    super.key,
    required this.onConfirm,
  });

  final void Function(
    DestinationBankItem bankData,
    RecipientData recipient,
  ) onConfirm;

  @override
  State<MultiTransferBankDestinationBottomSheet> createState() =>
      _MultiTransferBankDestinationBottomSheetState();
}

class _MultiTransferBankDestinationBottomSheetState
    extends State<MultiTransferBankDestinationBottomSheet> {
  TextEditingController accountNumber = TextEditingController();
  String? accountNumberError;
  bool? accountNumberFound;
  RecipientData? recipientFound;
  List<DestinationBankItem> destinationBankList = [];
  DestinationBankItem? selectedDestinationBank;

  // @override
  // void initState() {
  //   context
  //       .read<MultiTransferBankListBloc>()
  //       .add(const MultiTransferBankListEvent.getBankList());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // return MultiBlocListener(
    //   listeners: [
    //     BlocListener<MultiTransferBankListBloc, MultiTransferBankListState>(
    //       listener: (context, state) {
    //         state.when(
    //           initial: () {},
    //           loading: () {},
    //           success: (data) {
    //             setState(() {
    //               destinationBankList.clear();
    //               destinationBankList.addAll(
    //                 data.data?.where((element) => element.isActive == true) ??
    //                     [],
    //               );
    //             });
    //           },
    //           failed: (message) {
    //             if (kDebugMode) print(message);
    //           },
    //         );
    //       },
    //     ),
    //     BlocListener<MultiTransferVerifyRecipientBloc,
    //         MultiTransferVerifyRecipientState>(
    //       listener: (context, state) {
    //         state.when(
    //           initial: () {},
    //           loading: () {},
    //           success: (data) {
    //             setState(() {
    //               accountNumberFound = true;
    //               recipientFound = data.data?.recipient;
    //             });
    //           },
    //           failed: (message) {
    //             if (message.contains("not found")) {
    //               setState(() => accountNumberFound = false);
    //             }
    //             if (kDebugMode) print(message);
    //           },
    //         );
    //       },
    //     ),
    //   ],
      body:  Padding(
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
                    "Bank Destination",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  LabeledDropdownMenu(
                    color: ColorResource.blue900,
                    enabledColor: ColorResource.blue900,
                    items: destinationBankList
                        .map<DropdownMenuItem<DestinationBankItem>>(
                      (DestinationBankItem value) {
                        return DropdownMenuItem<DestinationBankItem>(
                          value: value,
                          child: SizedBox(
                            width: 75.w,
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: value.iconUrl ?? "",
                                  width: 64,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  value.bankName ?? "",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                    color: ColorResource.blue850,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDestinationBank = value;
                        accountNumberError = null;
                        accountNumberFound = null;
                        recipientFound = null;
                      });
                    },
                    value: selectedDestinationBank,
                    hint: Row(
                      children: [
                        Assets.icons.icBank.image(scale: 2),
                        const SizedBox(width: 16),
                        Text(
                          "Choose Bank",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.blue850,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Account Destination",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Account Number",
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: accountNumber.text.isNotEmpty
                          ? ColorResource.blue850
                          : ColorResource.black100,
                    ),
                  ),
                  const SizedBox(height: 6),
                  LabeledTextField(
                    controller: accountNumber,
                    color: ColorResource.blue900,
                    hintText: "Input Account Number",
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.phone,
                    suffix: InkWell(
                      onTap: () {
                        if (accountNumber.text.isEmpty) {
                          setState(() {
                            accountNumberError =
                                "Account number can not be empty";
                          });
                        } else if (selectedDestinationBank == null) {
                          setState(() {
                            accountNumberError =
                                "Please choose a destination bank before proceeding.";
                          });
                        } else {
                          context.read<MultiTransferVerifyRecipientBloc>().add(
                              MultiTransferVerifyRecipientEvent.verifyRecipient(
                                  selectedDestinationBank?.bankCode ?? "",
                                  accountNumber.text));
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
                        accountNumberError = null;
                        recipientFound = null;
                      });
                    },
                    errorText: accountNumberError,
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
                              "Account not found.",
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
                      onPressed: accountNumberFound == true &&
                              recipientFound != null &&
                              selectedDestinationBank != null
                          ? () {
                              Navigator.pop(context);
                              widget.onConfirm(
                                selectedDestinationBank!,
                                recipientFound!,
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
