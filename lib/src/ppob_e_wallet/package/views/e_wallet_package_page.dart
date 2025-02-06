import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/phone_number_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/detail/views/e_wallet_detail_page.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/package/bloc/e_wallet_package_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class EWalletPackagePage extends StatefulWidget {
  const EWalletPackagePage({super.key});

  @override
  State<EWalletPackagePage> createState() => _EWalletPackagePageState();
}

class _EWalletPackagePageState extends State<EWalletPackagePage> {
  TextEditingController phoneNumberController = TextEditingController();
  late String productType;
  String? selectedPackageId;
  String? selectedDenominationId;
  List<String> eWalletList = [];
  List<PpobPackageDataItem> packageList = [];
  List<PpobPackageDataItemDenominationList> denominationList = [];
  String? phoneInputNumberError;

  void validateInputNumber(String value) {
    if (value.length > 15) {
      setState(() {
        phoneInputNumberError = 'Invalid phone number, too many characters';
      });
    } else {
      setState(() {
        phoneInputNumberError = null;
      });
    }
  }

  // @override
  // void initState() {
  //   context
  //       .read<EWalletPackageBloc>()
  //       .add(const EWalletPackageEvent.getPackageList());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 260,
            decoration: const BoxDecoration(
              color: ColorResource.blue850,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                toolbarHeight: 64,
                title: Text(
                  "E-Wallet",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "E-Wallet",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    const SizedBox(height: 8),
                    // BlocListener<EWalletPackageBloc, EWalletPackageState>(
                    //   listener: (context, state) {
                    //     state.when(
                    //       initial: () {},
                    //       loading: () {
                    //         showDialog(
                    //           barrierDismissible: false,
                    //           context: context,
                    //           builder: (context) => const LoadingDialog(),
                    //         );
                    //       },
                    //       getPackageSuccess: (data) {
                    //         Navigator.pop(context);
                    //         setState(() {
                    //           packageList.clear();
                    //           packageList.addAll(data.data);
                    //           productType = packageList[0].packageType;
                    //           eWalletList.clear();
                    //           eWalletList.addAll(
                    //             packageList.map((e) => e.packageName),
                    //           );
                    //         });
                    //       },
                    //       failed: (message) {
                    //         Navigator.pop(context);
                    //         showSnackBar(context, message);
                    //       },
                    //     );
                    //   },
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.expand(height: 70.h),
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return ChooseEWalletBottomSheet(
                              eWalletList: eWalletList,
                              onSelect: (chosenEWallet) {
                                setState(() {
                                  final selectedPackage = packageList
                                      .where((element) =>
                                          element.packageName == chosenEWallet)
                                      .first;
                                  selectedPackageId = selectedPackage.id;
                                  denominationList.clear();
                                  denominationList.addAll(
                                      selectedPackage.denominationList ?? []);
                                  selectedDenominationId = null;
                                });
                              },
                            );
                          },
                        );
                      },
                      child: CommonOutlinedContainer(
                        padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                        borderColor: ColorResource.black100.withOpacity(0.8),
                        child: Row(
                          children: [
                            if (selectedPackageId != null) ...[
                              Expanded(
                                child: Text(
                                  packageList
                                      .where((element) =>
                                          element.id == selectedPackageId)
                                      .first
                                      .packageName,
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                              ),
                            ] else ...[
                              SvgPicture.asset(
                                Assets.icons.icEWallet,
                                colorFilter: ColorFilter.mode(
                                  ColorResource.black100.withOpacity(0.8),
                                  BlendMode.srcIn,
                                ),
                                width: 24,
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  "Choose E-Wallet",
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: ColorResource.black100.withOpacity(0.8),
                            )
                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(height: 16),
                    Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                    const SizedBox(height: 8),
                    LabeledTextField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      color: ColorResource.black100,
                      suffixIcon: const Icon(Icons.perm_contact_cal_outlined),
                      // onChanged: (value) => setState(() {}),
                      onChanged: (value) {
                        validateInputNumber(value);
                      },
                      errorText: phoneInputNumberError,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              if (selectedPackageId != null) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Choose Nominal",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    itemCount: denominationList.length,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 5 / 4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedDenominationId = denominationList[index].id;
                          });
                        },
                        child: CommonOutlinedContainer(
                          borderColor: selectedDenominationId ==
                                  denominationList[index].id
                              ? Colors.transparent
                              : ColorResource.black100.withOpacity(0.4),
                          backgroundColor: selectedDenominationId ==
                                  denominationList[index].id
                              ? ColorResource.blue850
                              : Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 14,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      denominationList[index].name,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeightResource.medium,
                                        color: selectedDenominationId ==
                                                denominationList[index].id
                                            ? ColorResource.white
                                            : ColorResource.black100,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: 100.w,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 14,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: selectedDenominationId ==
                                              denominationList[index].id
                                          ? BorderSide(
                                              color: ColorResource.white
                                                  .withOpacity(0.2))
                                          : BorderSide.none,
                                    ),
                                    color: selectedDenominationId ==
                                            denominationList[index].id
                                        ? Colors.transparent
                                        : ColorResource.blue850
                                            .withOpacity(0.16),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      convertToIdr(
                                          denominationList[index].price, 0),
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: selectedDenominationId ==
                                                denominationList[index].id
                                            ? ColorResource.white
                                            : ColorResource.black100,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          )
        ],
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
                  selectedDenominationId != null
                      ? convertToIdr(
                          denominationList
                              .where((element) =>
                                  element.id == selectedDenominationId)
                              .first
                              .price,
                          0,
                        )
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
                backgroundColor: ColorResource.blue850,
                onPressed: selectedDenominationId != null &&
                        phoneNumberController.text.trim().isNotEmpty &&
                        selectedPackageId != null
                    ? () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.expand(height: 80.h),
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return PaymentMethodBottomSheet(
                              nominal: denominationList
                                  .where((element) =>
                                      element.id == selectedDenominationId)
                                  .first
                                  .price,
                              balanceColor: ColorResource.blue850,
                              onChoose: (chosenPaymentMethod) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EWalletDetailPage(
                                      paymentMethod: chosenPaymentMethod,
                                      nominal: denominationList
                                          .where((element) =>
                                              element.id ==
                                              selectedDenominationId)
                                          .first
                                          .name,
                                      price: denominationList
                                          .where((element) =>
                                              element.id ==
                                              selectedDenominationId)
                                          .first
                                          .price,
                                      eWalletDestination: packageList
                                          .where((element) =>
                                              element.id == selectedPackageId)
                                          .first
                                          .packageName,
                                      eWalletNumber:
                                          phoneNumberController.text.trim(),
                                      packageId: selectedPackageId!,
                                      denominationId: selectedDenominationId!,
                                      productType: productType,
                                    ),
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

class ChooseEWalletBottomSheet extends StatelessWidget {
  const ChooseEWalletBottomSheet({
    super.key,
    required this.eWalletList,
    required this.onSelect,
  });

  final List<String> eWalletList;
  final Function(String chosenEWallet) onSelect;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                "Choose E-Wallet",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: eWalletList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        onSelect(eWalletList[index]);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 14),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: ColorResource.black100.withOpacity(0.2),
                            ),
                          ),
                        ),
                        child: Text(eWalletList[index]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
