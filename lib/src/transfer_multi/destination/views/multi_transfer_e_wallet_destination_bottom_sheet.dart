import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/views/multi_transfer_destination_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MultiTransferEWalletDestinationBottomSheet extends StatefulWidget {
  const MultiTransferEWalletDestinationBottomSheet({
    super.key,
    this.isAddDestination = false,
    this.isTopUp = false,
  });

  final bool isAddDestination;
  final bool isTopUp;

  @override
  State<MultiTransferEWalletDestinationBottomSheet> createState() =>
      _MultiTransferEWalletDestinationBottomSheetState();
}

class _MultiTransferEWalletDestinationBottomSheetState
    extends State<MultiTransferEWalletDestinationBottomSheet> {
  TextEditingController eWalletNumber = TextEditingController();
  bool? eWalletNumberFound;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  "E-Wallet Destination",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (context) {
                        return const EWalletBottomSheet();
                      },
                    );
                  },
                  child: CommonOutlinedContainer(
                    backgroundColor: ColorResource.lightTurquoise,
                    borderColor: ColorResource.turquoise,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Assets.icons.icBca.image(scale: 2),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 6,
                          child: Text(
                            "GoPay",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
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
                    color: eWalletNumber.text.isNotEmpty
                        ? ColorResource.blue850
                        : ColorResource.black100,
                  ),
                ),
                const SizedBox(height: 6),
                LabeledTextField(
                  controller: eWalletNumber,
                  color: ColorResource.blue900,
                  hintText: "Input Account Number",
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.phone,
                  suffix: InkWell(
                    onTap: () {
                      if (eWalletNumber.text == "08123456789") {
                        setState(() => eWalletNumberFound = true);
                      } else {
                        setState(() => eWalletNumberFound = false);
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
                    setState(() => eWalletNumberFound = null);
                  },
                ),
                Visibility(
                  visible: eWalletNumberFound == false,
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
                  visible: eWalletNumberFound == true,
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
                          "Ahmad Arif",
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
                    onPressed: eWalletNumberFound == true
                        ? () {
                            Navigator.pop(context);
                            // showModalBottomSheet(
                            //   useSafeArea: true,
                            //   isDismissible: false,
                            //   isScrollControlled: true,
                            //   constraints: const BoxConstraints.expand(),
                            //   context: context,
                            //   builder: (context) {
                            //     return MultiTransferNominalPage(
                            //       isAddDestination: widget.isAddDestination,
                            //       isTopUp: widget.isTopUp,
                            //     );
                            //   },
                            // );
                          }
                        : null,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
