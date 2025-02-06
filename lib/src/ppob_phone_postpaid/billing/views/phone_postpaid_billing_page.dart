import 'dart:async';

import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/billing/bloc/phone_postpaid_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/detail/views/phone_postpaid_detail_page.dart';
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

class PhonePostpaidBillingPage extends StatefulWidget {
  const PhonePostpaidBillingPage({
    super.key,
    required this.package,
    required this.denomination,
  });

  final PpobPackageDataItem package;
  final PpobPackageDataItemDenominationList denomination;

  @override
  State<PhonePostpaidBillingPage> createState() =>
      _PhonePostpaidBillingPageState();
}

class _PhonePostpaidBillingPageState extends State<PhonePostpaidBillingPage> {
  TextEditingController customerIdController = TextEditingController();
  Timer? debounce;

  @override
  void initState() {
    context
        .read<PhonePostpaidInquiryBloc>()
        .add(const PhonePostpaidInquiryEvent.reset());
    customerIdController.addListener(onInputChanged);
    super.initState();
  }

  @override
  void dispose() {
    customerIdController.removeListener(onInputChanged);
    customerIdController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  void onInputChanged() {
    if (debounce?.isActive ?? false) {
      context
          .read<PhonePostpaidInquiryBloc>()
          .add(const PhonePostpaidInquiryEvent.reset());
      debounce?.cancel();
    }
    debounce = Timer(
      const Duration(seconds: 1),
      () {
        if (customerIdController.text.trim().length >= 4) {
          context.read<PhonePostpaidInquiryBloc>().add(
                PhonePostpaidInquiryEvent.getBillDetail(
                  productId: PpobConst.phone,
                  packageId: widget.package.id,
                  denominationId: widget.denomination.id,
                  customerId: customerIdController.text.trim(),
                ),
              );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Phone Postpaid",
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
                "Customer Phone Number",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: customerIdController,
                style: const TextStyle(
                  color: ColorResource.blue850,
                  fontWeight: FontWeightResource.semiBold,
                ),
                hintText: "Enter Phone Number",
                hintStyle: TextStyle(
                  color: ColorResource.blue850.withOpacity(0.4),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeightResource.regular,
                ),
                maxLength: 15,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 8),
              BlocBuilder<PhonePostpaidInquiryBloc, PhonePostpaidInquiryState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 48),
                      child: Center(
                        child: CustomLoadingWidget(),
                      ),
                    ),
                    success: (data) {
                      PostPaidData internetTvData = data.data;
                      if (internetTvData.customer.customerName.isNotEmpty) {
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
                                    internetTvData.customer.customerName,
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
                              startText: "Service Category",
                              endText: widget.package.packageName,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Service Name",
                              endText: internetTvData.taxDetail.buyerSkuCode,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Phone Number",
                              endText: internetTvData.customer.customerNo,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Customer Name",
                              endText: internetTvData.customer.customerName,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Period",
                              endText: internetTvData
                                  .taxDetail.desc.detail[0].periode,
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Amount",
                              endText:
                                  "Rp ${internetTvData.taxDetail.desc.detail[0].nilaiTagihan}",
                            ),
                            const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Service Fee",
                              endText: convertToIdr(
                                  internetTvData.taxDetail.admin, 0),
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
                    failed: (String message) => const SizedBox(),
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
        child: BlocBuilder<PhonePostpaidInquiryBloc, PhonePostpaidInquiryState>(
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
                  text: "Choose Payment Method",
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return PhonePostpaidDetailPage(
                                          costumerName:
                                              data.data.customer.customerName,
                                          costumerId:
                                              data.data.customer.customerNo,
                                          billingAmount:
                                              data.data.taxDetail.sellingPrice,
                                          serviceFee: data.data.taxDetail.admin,
                                          paymentMethod: chosenPaymentMethod,
                                          packageId: widget.package.id,
                                          denomId: widget.denomination.id,
                                          customerNumber:
                                              customerIdController.text,
                                          packageType:
                                              widget.package.packageType,
                                          serviceName: widget.package.packageName,
                                        );
                                      },
                                    ),
                                  );
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
