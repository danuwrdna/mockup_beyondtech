import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhoneDataTabPage extends StatelessWidget {
  const PhoneDataTabPage({
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
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: selectedPackage?.denominationList?.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    onDenominationItemSelected(
                      selectedPackage,
                      selectedPackage?.denominationList?[index],
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        color: selectedDenomination?.id ==
                                selectedPackage?.denominationList?[index].id
                            ? ColorResource.red.withOpacity(0.12)
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Assets.images.icBillsPhoneData.image(scale: 2),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      selectedPackage
                                              ?.denominationList?[index].name ??
                                          "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      convertToIdr(
                                        selectedPackage
                                                ?.denominationList?[index]
                                                .price ??
                                            0,
                                        0,
                                      ),
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeightResource.medium,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: ColorResource.black100.withOpacity(0.28),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
