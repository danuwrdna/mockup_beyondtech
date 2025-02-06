import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/views/guide_page.dart';
import 'package:bpay_mobile/src/auth_verification/passport/summary/models/passport_verification_data_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/double_column_text_widget.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class PassportVerificationSummaryPage extends StatelessWidget {
  const PassportVerificationSummaryPage({
    super.key,
    required this.passportData,
  });

  final PassportVerificationDataModel passportData;

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
                stepLabel: "Personal Data Form",
                currentStep: 1,
                totalStep: 2,
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
              CommonOutlinedContainer(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                borderColor: ColorResource.black100.withOpacity(0.4),
                radius: 8,
                child: Column(
                  children: [
                    DoubleColumnTextWidget(
                      startText: "Passport Type",
                      endText: passportData.passportType,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Country Code",
                      endText: passportData.countryCode,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Passport Number",
                      endText: passportData.passportNumber,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Full Name",
                      endText: passportData.fullName,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Gender",
                      endText: passportData.gender,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Nationality",
                      endText: passportData.nationality,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Place of Birth",
                      endText: passportData.placeOfBirth,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Date of Birth",
                      endText: passportData.dateOfBirth,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Date of Issue",
                      endText: passportData.dateOfIssue,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Date of Expiry",
                      endText: passportData.dateOfExpiry,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Place of Issue",
                      endText: passportData.placeOfIssue,
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
              CommonOutlinedContainer(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                borderColor: ColorResource.black100.withOpacity(0.4),
                radius: 8,
                child: Column(
                  children: [
                    DoubleColumnTextWidget(
                      startText: "Country",
                      endText: passportData.currentCountry,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Province",
                      endText: passportData.currentProvince,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "City/Regency",
                      endText: passportData.currentCityRegency,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "District",
                      endText: passportData.currentDistrict,
                    ),
                    const SizedBox(height: 12),
                    DoubleColumnTextWidget(
                      startText: "Full Address",
                      endText: passportData.currentAddress,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Continue",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GuidePage(passportData: passportData);
                      },
                    ),
                  ),
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
