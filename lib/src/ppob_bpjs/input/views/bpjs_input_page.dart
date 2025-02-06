import 'dart:async';

import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/src/ppob_bpjs/detail/views/bpjs_detail_page.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_bpjs/input/bloc/bpjs_inquiry_postpaid_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/package/bloc/ppob_bpjs_package_bloc.dart';
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

class BpjsInputPage extends StatefulWidget {
  const BpjsInputPage({
    super.key,
    this.package,
    this.denomination,
  });

  final PpobPackageDataItem? package;
  final PpobPackageDataItemDenominationList? denomination;

  @override
  State<BpjsInputPage> createState() => _BpjsInputPageState();
}

class _BpjsInputPageState extends State<BpjsInputPage> {
  TextEditingController bpjsNumberController = TextEditingController();

  String productId = PpobConst.bpjs;
  Timer? debounce;

  String? bpjsPackageId;
  String? denomId;
  String? packageTypeData;

  // @override
  // void initState() {
  //   bpjsNumberController.addListener(onInputChanged);
  //   context
  //       .read<PpobBpjsPackageBloc>()
  //       .add(const PpobBpjsPackageEvent.getPackageList());
  //   context
  //       .read<BpjsInquiryPostpaidBloc>()
  //       .add(const BpjsInquiryPostpaidEvent.reset());
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   bpjsNumberController.removeListener(onInputChanged);
  //   bpjsNumberController.dispose();
  //   debounce?.cancel();
  //   super.dispose();
  // }

  // void onInputChanged() {
  //   if (debounce?.isActive ?? false) {
  //     context.read<BpjsInquiryPostpaidBloc>().add(
  //           const BpjsInquiryPostpaidEvent.reset(),
  //         );
  //     debounce?.cancel();
  //   }
  //   debounce = Timer(
  //     const Duration(seconds: 1),
  //     () {
  //       if (bpjsNumberController.text.trim().length >= 4) {
  //         context.read<BpjsInquiryPostpaidBloc>().add(
  //               BpjsInquiryPostpaidEvent.getBpjsPostpaid(
  //                 productId: productId,
  //                 packageId: bpjsPackageId ?? "",
  //                 denomId: denomId ?? "",
  //                 customerNumber: bpjsNumberController.text.trim(),
  //               ),
  //             );
  //       }
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorResource.bpjs,
          toolbarHeight: 64,
          title: Text(
            "BPJS Kesehatan",
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
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
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
                      // const SizedBox(height: 16),
                      LabeledTextField(
                        controller: bpjsNumberController,
                        style: const TextStyle(
                          color: ColorResource.bpjs,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                        hintText: "Enter Customer ID",
                        hintStyle: TextStyle(
                          color: ColorResource.bpjs.withOpacity(0.4),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeightResource.regular,
                        ),
                        maxLength: 15,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      // const SizedBox(height: 8),
                      // BlocBuilder<PpobBpjsPackageBloc, PpobBpjsPackageState>(
                      //   builder: (context, state) {
                      //     return state.when(
                      //       initial: () => const SizedBox(),
                      //       loading: () => const Center(child: CustomLoadingWidget()),
                      //       getPackageSuccess: (packageData) {
                      //         bpjsPackageId = packageData.data[0].id;
                      //         denomId = packageData.data[0].denominationList?[0].id;
                      //         packageTypeData = packageData.data[0].packageType;

                      // return BlocBuilder<BpjsInquiryPostpaidBloc,
                      //     BpjsInquiryPostpaidState>(
                      //   builder: (context, state) {
                      //     return state.when(
                      //       initial: () => const SizedBox(),
                      //       loading: () => const Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 48),
                      //         child: Center(child: CustomLoadingWidget()),
                      //       ),
                      //       getBpjsPostpaidSuccess: (data) {
                      //         PostPaidData inquiryData = data.data;
                      //         if (inquiryData
                      //             .customer.customerName.isNotEmpty) {
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.bpjs.withOpacity(0.24),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: ColorResource.bpjs,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: ColorResource.white,
                                      size: 16,
                                    ),
                                  ),
                                  // const SizedBox(width: 12),
                                  Text(
                                    "Test",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.medium,
                                      color: ColorResource.bpjs,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(height: 40),
                            Text(
                              "Billing Details",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                            // const SizedBox(height: 16),
                            StartEndTextRowWidget(
                                startText: "Name", endText: 'test'),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                                startText: "Customer ID", endText: 'test'),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Period",
                              endText: 'test',
                            ),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Customer Address",
                              endText: 'test',
                            ),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                                startText: "Customer Amount", endText: 'test'),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Billing Amount",
                              endText: 'test',
                            ),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                              startText: "Service Fee",
                              endText: 'test',
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorResource.bpjs.withOpacity(0.24),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: const BoxDecoration(
                                          color: ColorResource.bpjs,
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
                                          color: ColorResource.bpjs,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ])
                    ]))));
  }
}
