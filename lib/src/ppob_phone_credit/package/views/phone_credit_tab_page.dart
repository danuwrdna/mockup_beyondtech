import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhoneCreditTabPage extends StatelessWidget {
  const PhoneCreditTabPage({
    super.key,
    required this.selectedPackage,
    required this.selectedDenomination,
    required this.onDenominationItemSelected,
  });

  final PpobPackageDataItem? selectedPackage;
  final PpobPackageDataItemDenominationList? selectedDenomination;
  final Function(
    PpobPackageDataItem? selectedPackage,
    PpobPackageDataItemDenominationList? selectedDenomination,
  ) onDenominationItemSelected;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: selectedPackage != null,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Choose Nominal",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              itemCount: selectedPackage?.denominationList?.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5 / 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    onDenominationItemSelected(
                      selectedPackage,
                      selectedPackage?.denominationList?[index],
                    );
                  },
                  child: CommonOutlinedContainer(
                    borderColor: selectedDenomination?.id ==
                            selectedPackage?.denominationList?[index].id
                        ? Colors.transparent
                        : ColorResource.black100.withOpacity(0.4),
                    backgroundColor: selectedDenomination?.id ==
                            selectedPackage?.denominationList?[index].id
                        ? ColorResource.red
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    selectedPackage
                                            ?.denominationList?[index].name ??
                                        "",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      color: selectedDenomination?.id ==
                                              selectedPackage
                                                  ?.denominationList?[index].id
                                          ? ColorResource.white
                                          : ColorResource.black100,
                                    ),
                                  ),
                                  // const SizedBox(height: 4),
                                  // Text(
                                  //   "*Active Period 1 Day",
                                  //   // "*Masa Aktif 1 Hari",
                                  //   style: TextStyle(
                                  //     fontSize: 11.sp,
                                  //     color: selectedIndex == index
                                  //         ? ColorResource.white
                                  //         : ColorResource.black100
                                  //             .withOpacity(
                                  //             0.8,
                                  //           ),
                                  //   ),
                                  // ),
                                ],
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
                                top: selectedDenomination?.id ==
                                        selectedPackage
                                            ?.denominationList?[index].id
                                    ? BorderSide(
                                        color: ColorResource.white
                                            .withOpacity(0.2),
                                        width: 2)
                                    : BorderSide.none,
                              ),
                              color: selectedDenomination?.id ==
                                      selectedPackage
                                          ?.denominationList?[index].id
                                  ? Colors.transparent
                                  : ColorResource.red.withOpacity(0.16),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                convertToIdr(
                                    selectedPackage
                                            ?.denominationList?[index].price ??
                                        0,
                                    0),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: selectedDenomination?.id ==
                                          selectedPackage
                                              ?.denominationList?[index].id
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
          ],
        ),
      ),
    );
  }
}
