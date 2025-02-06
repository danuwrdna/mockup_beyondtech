import 'dart:async';

import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_water_bills/billing/bloc/water_bills_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/detail/views/water_bills_detail_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class WaterBillsBillingPage extends StatefulWidget {
  const WaterBillsBillingPage({
    super.key,
    required this.package,
    required this.denomination,
  });

  final PpobPackageDataItem package;
  final PpobPackageDataItemDenominationList denomination;

  @override
  State<WaterBillsBillingPage> createState() => _WaterBillsBillingPageState();
}

class _WaterBillsBillingPageState extends State<WaterBillsBillingPage> {
  TextEditingController costumerIdController = TextEditingController();
  Timer? debounce;

  @override
  void initState() {
    costumerIdController.addListener(onInputChanged);
    super.initState();
  }

  @override
  void dispose() {
    costumerIdController.removeListener(onInputChanged);
    costumerIdController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  void onInputChanged() {
    if (debounce?.isActive ?? false) {
      context
          .read<WaterBillsInquiryBloc>()
          .add(const WaterBillsInquiryEvent.reset());
      debounce?.cancel();
    }
    debounce = Timer(const Duration(seconds: 1), () {
      if (costumerIdController.text.trim().length >= 4) {
        context
            .read<WaterBillsInquiryBloc>()
            .add(WaterBillsInquiryEvent.getBillDetail(
              productId: PpobConst.waterBill,
              packageId: widget.package.id,
              denominationId: widget.denomination.id,
              customerId: costumerIdController.text.trim(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Water Bills",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Customer ID",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: costumerIdController,
                style: const TextStyle(
                  color: ColorResource.blue850,
                  fontWeight: FontWeightResource.semiBold,
                ),
                hintText: "Enter Customer ID",
                hintStyle: TextStyle(
                  color: ColorResource.blue850.withOpacity(0.4),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeightResource.regular,
                ),
                maxLength: 15,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              BlocBuilder<WaterBillsInquiryBloc, WaterBillsInquiryState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 48),
                      child: Center(child: CustomLoadingWidget()),
                    ),
                    success: (data) {
                      PostPaidData inquiryData = data.data;
                      if (inquiryData.customer.customerName.isNotEmpty) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.blue850.withOpacity(0.24),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: ColorResource.blue850,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: ColorResource.white,
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    inquiryData.customer.customerName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.medium,
                                      color: ColorResource.blue850,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Text(
                              "Billing Details",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            StartEndTextRowWidget(
                              startText: "Name",
                              endText: inquiryData.customer.customerName,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Customer ID",
                              endText: inquiryData.customer.customerNo,
                            ),
                             const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Service Type",
                              endText: inquiryData
                                  .taxDetail.buyerSkuCode,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Period",
                              endText: inquiryData
                                  .taxDetail.desc.detail.first.periode,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Amount",
                              endText: convertToIdr(
                                inquiryData.taxDetail.sellingPrice,
                                0,
                              ),
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Service Fee",
                              endText: convertToIdr(
                                inquiryData.taxDetail.admin,
                                0,
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.blue850.withOpacity(0.24),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: ColorResource.blue850,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.close,
                                      color: ColorResource.white,
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    "Customer ID Not Found",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.medium,
                                      color: ColorResource.blue850,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    },
                    failed: (message) => const SizedBox(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorResource.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: ColorResource.black.withOpacity(0.13),
              offset: const Offset(0, -2),
            )
          ],
        ),
        child: BlocBuilder<WaterBillsInquiryBloc, WaterBillsInquiryState>(
          builder: (context, state) {
            return state.when(
              initial: () => AppFilledButton(
                text: "choose payment method".capitalizeEach(),
                backgroundColor: ColorResource.blue850,
                radius: 8,
              ),
              loading: () => AppFilledButton(
                text: "choose payment method".capitalizeEach(),
                backgroundColor: ColorResource.blue850,
                radius: 8,
              ),
              success: (data) {
                return AppFilledButton(
                  text: "choose payment method".capitalizeEach(),
                  onPressed: data.data.customer.customerName.isNotEmpty
                      ? () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            constraints: BoxConstraints.expand(height: 80.h),
                            showDragHandle: true,
                            context: context,
                            builder: (context) {
                              return PaymentMethodBottomSheet(
                                nominal: data.data.taxDetail.sellingPrice,
                                balanceColor: ColorResource.blue850,
                                onChoose: (chosenPaymentMethod) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      String recipient =
                                          data.data.customer.customerName;
                                      String registeredCostumerId =
                                          data.data.customer.customerNo;
                                      int billingAmount =
                                          data.data.taxDetail.sellingPrice;
                                      int serviceFee =
                                          data.data.taxDetail.admin;
                                      String packageId = widget.package.id;
                                      String denominationId = widget.denomination.id;
                                      String productType = widget.package.packageType;
                                      return WaterBillsDetailPage(
                                        costumerName: recipient,
                                        costumerId: registeredCostumerId,
                                        billingAmount: billingAmount,
                                        serviceFee: serviceFee,
                                        paymentMethod: chosenPaymentMethod,
                                        packageId: packageId,
                                        denominationId: denominationId,
                                        productType: productType,
                                      );
                                    },
                                  ));
                                },
                              );
                            },
                          );
                        }
                      : null,
                  backgroundColor: ColorResource.blue850,
                  radius: 8,
                );
              },
              failed: (message) => AppFilledButton(
                text: "choose payment method".capitalizeEach(),
                backgroundColor: ColorResource.blue850,
                radius: 8,
              ),
            );
          },
        ),
      ),
    );
  }
}
