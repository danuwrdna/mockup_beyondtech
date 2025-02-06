import 'package:bpay_mobile/src/transfer_remittance/additional_details/bloc/transfer_remittance_additional_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/models/transfer_remittance_additional_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/views/remittance_additional_information_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/views/remittance_payment_page.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class RemittanceAdditionalInformationPage extends StatefulWidget {
  final Map<String, TextEditingController>? controllers;
  final Map<String, dynamic>? selectedService;
  final String? destinationCountryCode;
  final int amount;

  const RemittanceAdditionalInformationPage({
    super.key,
    required this.controllers,
    required this.selectedService,
    required this.destinationCountryCode,
    required this.amount,
  });

  @override
  State<RemittanceAdditionalInformationPage> createState() =>
      _RemittanceAdditionalInformationPageState();
}

class _RemittanceAdditionalInformationPageState
    extends State<RemittanceAdditionalInformationPage> {
  TextEditingController fundSourceController = TextEditingController();
  String fundSourceValue = "";
  TextEditingController transactionNeedController = TextEditingController();
  String transactionNeedValue = "";

  List<OccupationItem> fundSourceList = [
    OccupationItem(value: "Business", description: "Business Income"),
    OccupationItem(value: "Salary", description: "Monthly Salary"),
    OccupationItem(value: "Savings", description: "Personal Savings"),
    OccupationItem(value: "Gift", description: "Received as Gift"),
  ];

  @override
  void initState() {
    context.read<TransferRemittanceAdditionalDetailBloc>().add(
        TransferRemittanceAdditionalDetailEvent.getEnumeration(
            widget.destinationCountryCode ?? ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.remittance,
        toolbarHeight: 64,
        title: Text(
          "Recipient Data",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResource.white,
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: ColorResource.darkRemittance,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                  child: const AppDashedLine(
                    height: 1,
                    dashWidth: 5,
                    color: ColorResource.darkRemittance,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: ColorResource.darkRemittance,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                  child: const AppDashedLine(
                    height: 1,
                    dashWidth: 5,
                    color: ColorResource.darkRemittance,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: ColorResource.darkRemittance,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  "Additional Information",
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
              ],
            ),
          ),
          CommonShadowedContainer(
            backgroundColor: ColorResource.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            radius: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Destination Detail",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Source of Sender's Fund",
                  style: TextStyle(fontSize: 11.sp),
                ),
                const SizedBox(height: 6),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints.expand(height: 80.h),
                      showDragHandle: true,
                      context: context,
                      builder: (context) {
                        return RemittanceAdditionalInformationBottomSheet(
                          onSelect: (value) {
                            setState(() {
                              fundSourceController.text = value;
                            });
                            setState(() {
                              fundSourceController.text = fundSourceList
                                      .firstWhere(
                                          (element) => element.value == value)
                                      .description ??
                                  "";
                              fundSourceValue = value;
                            });
                          },
                          itemList: fundSourceList,
                          bottomSheetTitle: "Source of Funds",
                        );
                      },
                    );
                  },
                  child: TextField(
                    controller: fundSourceController,
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: "Choose Source of Funds",
                      hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontStyle: FontStyle.italic,
                        color: ColorResource.black100.withOpacity(0.8),
                      ),
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
                      suffixIconColor: ColorResource.black100,
                    ),
                    enabled: false,
                    style: const TextStyle(color: ColorResource.black100),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Transaction Need",
                  style: TextStyle(fontSize: 11.sp),
                ),
                const SizedBox(height: 6),
                BlocBuilder<TransferRemittanceAdditionalDetailBloc,
                    TransferRemittanceAdditionalDetailState>(
                  builder: (context, state) {
                    return state.when(
                        initial: () => Container(),
                        loading: () => Container(),
                        success: (data) {
                          var items = data.data![0].items;

                          return InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                constraints:
                                    BoxConstraints.expand(height: 80.h),
                                showDragHandle: true,
                                context: context,
                                builder: (context) {
                                  return RemittanceAdditionalInformationBottomSheet(
                                    onSelect: (value) {
                                      setState(() {
                                        transactionNeedController.text = items
                                                .firstWhere((element) =>
                                                    element.value == value)
                                                .description ??
                                            "";
                                        transactionNeedValue = value;
                                      });
                                    },
                                    itemList: items!,
                                    bottomSheetTitle: "Transaction Need",
                                  );
                                },
                              );
                            },
                            child: TextField(
                              controller: transactionNeedController,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                hintText: "Choose Shipping Need",
                                hintStyle: TextStyle(
                                  fontSize: 11.sp,
                                  fontStyle: FontStyle.italic,
                                  color:
                                      ColorResource.black100.withOpacity(0.8),
                                ),
                                suffixIcon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                suffixIconColor: ColorResource.black100,
                              ),
                              enabled: false,
                              style: const TextStyle(
                                  color: ColorResource.black100),
                            ),
                          );
                        },
                        failed: (data) => Container());
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 100.w,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: AppFilledButton(
              text: "Next",
              backgroundColor: ColorResource.remittance,
              radius: 8,
              onPressed: transactionNeedValue.trim().isNotEmpty &&
                      fundSourceValue.trim().isNotEmpty
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RemittancePaymentPage(
                              fieldsControllers: widget.controllers,
                              selectedService: widget.selectedService,
                              destinationCountryCode:
                                  widget.destinationCountryCode,
                              amount: widget.amount,
                              purposeOfTransaction: transactionNeedValue.trim(),
                              sourceOfFunds: fundSourceValue.trim(),
                            );
                          },
                        ),
                      );
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
