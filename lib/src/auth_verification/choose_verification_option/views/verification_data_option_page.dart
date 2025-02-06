import 'package:bpay_mobile/src/auth_verification/choose_verification_option/models/verification_option_enum.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/views/step_1_guide_page.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/views/passport_verification_form_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class VerificationDataOptionPage extends StatefulWidget {
  const VerificationDataOptionPage({super.key, this.isShowBackIcon = false});

  final bool isShowBackIcon;

  @override
  State<VerificationDataOptionPage> createState() =>
      _VerificationDataOptionPageState();
}

class _VerificationDataOptionPageState
    extends State<VerificationDataOptionPage> {
  VerificationOption? selected;

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
        leading: widget.isShowBackIcon
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : null,
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verifying your identity helps us maintain a secure environment for all our users.",
              style: TextStyle(fontSize: 12.sp),
            ),
            const SizedBox(height: 24),
            Text(
              "Select the data to verify",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: VerificationOption.values.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = VerificationOption.values[index];
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorResource.black100.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: VerificationOption.values[index],
                                groupValue: selected,
                                onChanged: (value) {
                                  setState(() {
                                    selected = value ?? VerificationOption.ktp;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                "Use ${VerificationOption.values[index].label}",
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue900,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Image.asset(
                              VerificationOption.values[index].image,
                              scale: 1.7,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: index < VerificationOption.values.length - 1,
                      child: const SizedBox(height: 12),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 24),
            Visibility(
              visible: selected != null,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: ColorResource.blue300,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Assets.icons.icSecure.image(scale: 1.7),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "By confirming your personal details, you help us tailor our services to better meet your needs.",
                        style: TextStyle(fontSize: 11.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100.w,
              child: AppFilledButton(
                text: "Continue",
                onPressed: selected == null
                    ? null
                    : () {
                        switch (selected) {
                          case VerificationOption.ktp:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Step1GuidePage(),
                              ),
                            );
                            break;
                          case VerificationOption.passport:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const PassportVerificationFormPage();
                                },
                              ),
                            );
                            break;
                          default:
                            break;
                        }
                      },
              ),
            ),
            const SizedBox(height: 72),
            Center(child: Assets.icons.icLogo.image(height: 24)),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
