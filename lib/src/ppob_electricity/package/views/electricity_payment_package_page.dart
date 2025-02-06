import 'dart:async';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/ppob_package_type_enum.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_electricity/detail/views/electricity_payment_detail_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/inquiry/electricity_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/package/electricity_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/views/electricity_bills_tab_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/views/electricity_token_tab_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ElectricityPaymentPackagePage extends StatefulWidget {
  const ElectricityPaymentPackagePage({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  State<ElectricityPaymentPackagePage> createState() =>
      _ElectricityPaymentPackagePageState();
}

class _ElectricityPaymentPackagePageState
    extends State<ElectricityPaymentPackagePage> with TickerProviderStateMixin {
  List<PpobPackageDataItem> packageList = [];
  PpobPackageDataItem? selectedPackage;
  PpobPackageDataItemDenominationList? selectedDenomination;
  InquiryPostpaidResponseModel? inquiryData;
  TextEditingController costumerIdController = TextEditingController();
  late TabController tabController;
  Timer? debounce;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.animateTo(widget.tabIndex);
    context
        .read<ElectricityPackageBloc>()
        .add(const ElectricityPackageEvent.getPackageList());
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
    inquiryData = null;
    if (debounce?.isActive ?? false) {
      debounce?.cancel();
    }

    //   debounce = Timer(const Duration(seconds: 1), () {
    //     if (tabController.index == 1 &&
    //         costumerIdController.text.trim().length >= 7 &&
    //         selectedPackage != null) {
    //       context
    //           .read<ElectricityInquiryBloc>()
    //           .add(ElectricityInquiryEvent.getBillDetail(
    //         productId: PpobConst.electricity,
    //         packageId: selectedPackage?.id ?? "",
    //         denominationId:
    //         selectedPackage?.denominationList?.firstOrNull?.id ?? "",
    //         customerId: costumerIdController.text.trim(),
    //       ));
    //     }
    //     setState(() {});
    //   });
    // }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(children: [
        Container(
          width: 100.w,
          height: 180,
          decoration: const BoxDecoration(
            color: ColorResource.blue850,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppBar(
            toolbarHeight: 64,
            title: Text(
              "PLN Electricity",
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
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 8),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CommonShadowedContainer(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                backgroundColor: ColorResource.white,
                radius: 24,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Customer ID / Meter Number",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: ColorResource.blue850,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    LabeledTextField(
                      controller: costumerIdController,
                      keyboardType: TextInputType.number,
                      color: ColorResource.blue850,
                      style: const TextStyle(
                        color: ColorResource.blue850,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: -25,
                right: 44,
                child: Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorResource.yellow100,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Assets.images.icPln.image(scale: 1.5),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            indicatorColor: ColorResource.black100,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tabController,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeightResource.bold,
              color: ColorResource.black100,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontWeight: FontWeightResource.regular,
              color: ColorResource.black100.withOpacity(0.72),
            ),
            dividerColor: ColorResource.black100.withOpacity(0.32),
            dividerHeight: 1,
            tabs: const [
              Tab(child: Text("Electricity Token")),
              Tab(child: Text("Electricity Bills")),
            ],
            onTap: (value) => setState(() {
              inquiryData = null;
              selectedDenomination = null;
              if (tabController.index == 0) {
                selectedPackage = packageList
                    .where((element) =>
                        element.packageType.toLowerCase() ==
                        PpobPackageType.prepaid.name)
                    .firstOrNull;
              } else {
                selectedPackage = packageList
                    .where((element) =>
                        element.packageType.toLowerCase() ==
                        PpobPackageType.postpaid.name)
                    .firstOrNull;
                // if (costumerIdController.text.trim().length >= 7 &&
                //     selectedPackage != null) {
                //   context
                //       .read<ElectricityInquiryBloc>()
                //       .add(ElectricityInquiryEvent.getBillDetail(
                //         productId: PpobConst.electricity,
                //         packageId: selectedPackage?.id ?? "",
                //         denominationId: selectedPackage
                //                 ?.denominationList?.firstOrNull?.id ??
                //             "",
                //         customerId: costumerIdController.text.trim(),
                //       ));
                // }
              }
              setState(() {});
            }),
          ),
          BlocListener<ElectricityPackageBloc, ElectricityPackageState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  getPackageSuccess: (data) {
                    packageList.clear();
                    packageList.addAll(data.data);
                    if (tabController.index == 0) {
                      selectedPackage = packageList
                          .where((element) =>
                              element.packageType.toLowerCase() ==
                              PpobPackageType.prepaid.name)
                          .firstOrNull;
                    } else {
                      selectedPackage = packageList
                          .where((element) =>
                              element.packageType.toLowerCase() ==
                              PpobPackageType.postpaid.name)
                          .firstOrNull;
                    }
                    setState(() {});
                  },
                  failed: (message) {
                    showSnackBar(context, message);
                  },
                );
              },
              child: Expanded(
                  child: TabBarView(
                      controller: tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                    BlocBuilder<ElectricityPackageBloc,
                        ElectricityPackageState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const SizedBox(),
                          loading: () => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 48),
                            child: Center(child: CustomLoadingWidget()),
                          ),
                          getPackageSuccess: (data) {
                            return ElectricityTokenTabPage(
                              selectedPackage: selectedPackage,
                              selectedDenomination: selectedDenomination,
                              onDenominationItemSelected: (denomination) {
                                selectedDenomination = denomination;
                                setState(() {});
                              },
                            );
                          },
                          failed: (message) => const SizedBox(),
                        );
                      },
                    ),
                    // BlocBuilder<ElectricityPackageBloc,
                    //     ElectricityPackageState>(
                    //   builder: (context, state) {
                    // return state.when(
                    //   initial: () => const SizedBox(),
                    //   loading: () => const Padding(
                    //     padding: EdgeInsets.symmetric(vertical: 48),
                    //     child: Center(child: CustomLoadingWidget()),
                    //   ),
                    // getPackageSuccess: (data) {
                    // return BlocConsumer<ElectricityInquiryBloc,
                    //     ElectricityInquiryState>(
                    //   listener: (context, state) {
                    //     state.when(
                    //       initial: () {},
                    //       loading: () {},
                    //       success: (data) {
                    //         inquiryData = data;
                    //         setState(() {});
                    //       },
                    //       failed: (message) {
                    //         showSnackBar(context, message);
                    //       },
                    //     );
                    //   },
                  ])))
        ])
      ]));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
