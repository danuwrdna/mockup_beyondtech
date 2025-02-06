import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/views/step_3_camera_view_page.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/views/step_3_photo_preview_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Step3GuidePage extends StatelessWidget {
  const Step3GuidePage({
    super.key,
    required this.idCardData,
    required this.idCardImage,
  });

  final IdCardVerificationDataModel idCardData;
  final File idCardImage;

  static List<String> instructions = [
    "Position your phone vertically while taking photos. Make sure the photo is not blurry or cropped.",
    "The KTP must be clearly visible.",
    "Make sure that you have enough lighting and not use any facial accessories such as mask or glasses.",
  ];

  Future<void> takePicture(BuildContext context) async {
    final cameras = await availableCameras();
    final frontCamera = cameras[1];
    if (context.mounted) {
      File capturedPhoto = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Step3CameraViewPage(camera: frontCamera),
        ),
      );

      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Step3PhotoPreviewPage(
                idCardSelfieImage: capturedPhoto,
                idCardData: idCardData,
                idCardImage: idCardImage,
              );
            },
          ),
        );
      }
    }
  }

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
                stepLabel: "KTP Selfie",
                currentStep: 3,
                totalStep: 3,
              ),
              const SizedBox(height: 20),
              Text(
                "Make sure you follow our guidelines",
                style: TextStyle(fontSize: 12.sp),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                      decoration: BoxDecoration(
                        color: ColorResource.green500.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResource.green500,
                                ),
                                child: const Icon(
                                  Icons.check_rounded,
                                  color: ColorResource.white,
                                  size: 12,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Correct",
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeightResource.medium,
                                  color: ColorResource.green500,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Assets.images.imgPlaceholder1.image(
                              scale: 1.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                      decoration: BoxDecoration(
                        color: ColorResource.red.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorResource.red,
                                ),
                                child: const Icon(
                                  Icons.check_rounded,
                                  color: ColorResource.white,
                                  size: 12,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Incorrect",
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeightResource.medium,
                                  color: ColorResource.red,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Assets.images.imgPlaceholder1.image(
                              scale: 1.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: instructions.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\u2022",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              instructions[index],
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: index < instructions.length - 1,
                        child: const SizedBox(height: 10),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 54),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Continue",
                  onPressed: () => takePicture(context),
                ),
              ),
              const SizedBox(height: 72),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
