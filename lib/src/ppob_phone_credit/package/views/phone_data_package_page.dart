import 'dart:async';

import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/detail/views/phone_data_detail_page.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/bloc/mobile_data/phone_data_package_data_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/bloc/phone_credit/phone_data_package_credit_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/views/phone_credit_tab_page.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/views/phone_data_tab_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PhoneDataPackagePage extends StatefulWidget {
  const PhoneDataPackagePage({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  State<PhoneDataPackagePage> createState() => _PhoneDataPackagePageState();
}

class _PhoneDataPackagePageState extends State<PhoneDataPackagePage>
    with TickerProviderStateMixin {
  List<PpobPackageDataItem> packageList = [];
  PpobPackageDataItemDenominationList? selectedDenomination;
  PpobPackageDataItem? selectedPackage;
  TextEditingController phoneNumberController = TextEditingController();

  Timer? debounce;

  // @override
  // void initState() {
  //   tabController = TabController(length: 2, vsync: this);
  //   tabController.animateTo(widget.tabIndex);
  //   phoneNumberController.addListener(onInputChanged);
  //   if (widget.tabIndex == 0) {
  //     context
  //         .read<PhoneDataPackageCreditBloc>()
  //         .add(const PhoneDataPackageCreditEvent.getPackageList());
  //   } else {
  //     context
  //         .read<PhoneDataPackageDataBloc>()
  //         .add(const PhoneDataPackageDataEvent.getPackageList());
  //   }
  //   super.initState();
  // }

  @override
  void dispose() {
    phoneNumberController.removeListener(onInputChanged);
    phoneNumberController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  void onInputChanged() {
    if (debounce?.isActive ?? false) {
      debounce?.cancel();
    }

    debounce = Timer(const Duration(seconds: 1), () {
      if (phoneNumberController.text.trim().length >= 7) {
        final operator =
            getOperator(phoneNumberController.text.trim()).toLowerCase();
        selectedPackage = packageList.where((element) {
          return element.packageName.toLowerCase().contains(operator);
        }).firstOrNull;
        if (context.mounted && selectedPackage == null) {
          showSnackBar(context, "No package available",
              duration: const Duration(seconds: 2));
        }
      } else {
        selectedPackage = null;
      }
      selectedDenomination = null;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: 100.w,
          height: 180,
          decoration: const BoxDecoration(
            color: ColorResource.red,
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
              "Phone Credit",
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
                      "Phone Number",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    if (selectedPackage != null) ...[
                      CommonOutlinedContainer(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        borderColor: ColorResource.black100.withOpacity(
                          0.6,
                        ),
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: selectedPackage!.iconUrl,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              selectedPackage!.packageName,
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ],
                        ),
                      )
                    ],
                  ],
                ),
                const SizedBox(height: 8),
                LabeledTextField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.number,
                  color: ColorResource.black100,
                  suffixIcon: const Icon(Icons.perm_contact_cal_outlined),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            indicatorColor: ColorResource.black100,
            indicatorSize: TabBarIndicatorSize.tab,

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
              Tab(child: Text("Phone Credit")),
              Tab(child: Text("Data Package")),
            ],
            // onTap: (value) {
            //   if (value == 0) {
            //     context.read<PhoneDataPackageCreditBloc>().add(
            //         const PhoneDataPackageCreditEvent.getPackageList());
            //   } else {
            //     context
            //         .read<PhoneDataPackageDataBloc>()
            //         .add(const PhoneDataPackageDataEvent.getPackageList());
            //   }
            //   selectedPackage = null;
            //   selectedDenomination = null;
            //   setState(() {});
            // },
          ),
          Expanded(
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                // BlocConsumer<PhoneDataPackageCreditBloc,
                //     PhoneDataPackageCreditState>(
                //   listener: (context, state) {
                //     state.when(
                //       initial: () {},
                //       loading: () {},
                //       getPackageSuccess: (data) {
                //         packageList.clear();
                //         packageList.addAll(data.data);
                //         if (phoneNumberController.text.length >= 7) {
                //           final operator = getOperator(
                //             phoneNumberController.text.trim(),
                //           ).toLowerCase();
                //           selectedPackage = packageList
                //               .where((element) => element.packageName
                //                   .toLowerCase()
                //                   .contains(operator))
                //               .firstOrNull;
                //           if (selectedPackage == null) {
                //             showSnackBar(context, "No package available",
                //                 duration: const Duration(seconds: 2));
                //           }
                //         }
                //         setState(() {});
                //       },
                //       failed: (message) {
                //         showSnackBar(context, message);
                //       },
                //     );
                //   },
                //   builder: (context, state) {
                //     return state.when(
                //       initial: () {
                //         return const SizedBox();
                //       },
                //       loading: () {
                //         return const Padding(
                //           padding: EdgeInsets.symmetric(vertical: 48),
                //           child: Center(child: CustomLoadingWidget()),
                //         );
                //       },
                //       getPackageSuccess: (data) {
                PhoneCreditTabPage(
                  selectedPackage: selectedPackage,
                  selectedDenomination: selectedDenomination,
                  onDenominationItemSelected: (
                    selectedPackage,
                    selectedDenomination,
                  ) {
                    setState(() {
                      this.selectedPackage = selectedPackage;
                      this.selectedDenomination = selectedDenomination;
                    });
                  },
                )
              ]))
        ]),
      ]),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Price", style: TextStyle(fontSize: 11.sp)),
                const SizedBox(height: 8),
                Text(
                  selectedDenomination != null && selectedPackage != null
                      ? convertToIdr(selectedDenomination?.price ?? 0, 0)
                      : "-",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
              ],
            ),
            SizedBox(
              child: AppFilledButton(
                text: "Choose Payment",
                backgroundColor: ColorResource.red,
                onPressed: selectedDenomination != null &&
                        selectedPackage != null
                    ? () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.expand(height: 80.h),
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return PaymentMethodBottomSheet(
                              nominal: selectedDenomination!.price,
                              balanceColor: ColorResource.red,
                              onChoose: (chosenPaymentMethod) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return PhoneDataDetailPage(
                                        paymentMethod: chosenPaymentMethod,
                                        productName: '',
                                        // productName: tabController.index == 0
                                        //     ? "Phone Credit"
                                        //     : "Data Package",
                                        phoneNumber:
                                            phoneNumberController.text.trim(),
                                        selectedPackage: selectedPackage!,
                                        selectedDenomination:
                                            selectedDenomination!,
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
                radius: 16,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
