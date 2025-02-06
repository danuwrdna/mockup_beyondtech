import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/navigation/views/navigation.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class VerificationSentPage extends StatelessWidget {
  const VerificationSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 28,
              horizontal: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 100.w,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Request Sent",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Navigation(),
                              ),
                              (route) => false,
                            );
                          },
                          child: const Icon(Icons.close, size: 30),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 60.w,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: const EdgeInsets.only(top: 24),
                          width: 40.w,
                          child: AppDashedLine(
                            height: 1,
                            color: ColorResource.black100.withOpacity(0.4),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResource.blue900,
                                ),
                                child: const Icon(
                                  Icons.check_rounded,
                                  color: ColorResource.white,
                                  size: 36,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Data\nVerification",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResource.grey300,
                                ),
                                child: const Icon(
                                  Icons.hourglass_empty_rounded,
                                  color: ColorResource.white,
                                  size: 36,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Validated\nData",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 54),
                Assets.images.imgRequestSent.image(scale: 2),
                const SizedBox(height: 44),
                RichText(
                  text: TextSpan(
                    text: "Please wait ",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: ColorResource.black100,
                    ),
                    children: [
                      TextSpan(
                        text: "up to 2 Hours",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeightResource.bold,
                        ),
                      ),
                      const TextSpan(
                        text: " while your account is being verified, "
                            "Meanwhile, you can still transfer money "
                            "with a limit up to Rp 500.000!",
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 100.w,
                  child: AppFilledButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Navigation(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 60),
                Center(child: Assets.icons.icLogo.image(height: 24))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
