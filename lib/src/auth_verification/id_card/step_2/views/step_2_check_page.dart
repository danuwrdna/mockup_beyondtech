import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/views/step_3_guide_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/double_column_text_widget.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class Step2CheckPage extends StatelessWidget {
  const Step2CheckPage({
    super.key,
    required this.idCardData,
    required this.idCardImage,
  });

  final IdCardVerificationDataModel idCardData;
  final File idCardImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "Complete Verification",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StepProgressWidget(
                stepLabel: "Check KTP Data",
                currentStep: 2,
                totalStep: 3,
              ),
              const SizedBox(height: 24),
              Text(
                "Ensure your data matches with the data in KTP.",
                style: TextStyle(fontSize: 12.sp),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icPersonalData),
                  const SizedBox(width: 16),
                  Text(
                    "Personal Data",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorResource.black100.withOpacity(0.4),
                  ),
                ),
                child: Column(
                  children: [
                    DoubleColumnTextWidget(
                      startText: "NIK",
                      endText: idCardData.nik,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Full Name",
                      endText: idCardData.fullName,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Gender",
                      endText: idCardData.gender,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Place of Birth",
                      endText: idCardData.placeOfBirth,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Date of Birth",
                      endText: idCardData.dateOfBirth,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Occupation",
                      endText: idCardData.occupation,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Nationality",
                      endText: idCardData.nationality,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Marital Status",
                      endText: idCardData.maritalStatus,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Religion",
                      endText: idCardData.religion,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icAddress),
                  const SizedBox(width: 16),
                  Text(
                    "KTP Address",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorResource.black100.withOpacity(0.4),
                  ),
                ),
                child: Column(
                  children: [
                    DoubleColumnTextWidget(
                      startText: "Country",
                      endText: idCardData.ktpCountry,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Province",
                      endText: idCardData.ktpProvince,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "City / Regency",
                      endText: idCardData.ktpCityRegency,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "District",
                      endText: idCardData.ktpDistrict,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Address",
                      endText: idCardData.ktpAddress,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icAddress),
                  const SizedBox(width: 16),
                  Text(
                    "Current Address",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorResource.black100.withOpacity(0.4),
                  ),
                ),
                child: Column(
                  children: [
                    DoubleColumnTextWidget(
                      startText: "Country",
                      endText: idCardData.currentCountry,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Province",
                      endText: idCardData.currentProvince,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "City / Regency",
                      endText: idCardData.currentCityRegency,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "District",
                      endText: idCardData.currentDistrict,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Address",
                      endText: idCardData.currentAddress,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Step3GuidePage(
                          idCardData: idCardData,
                          idCardImage: idCardImage,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
