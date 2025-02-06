import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/bloc/id_card_verification/id_card_verification_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/bloc/id_card_verification_phone_number/id_card_verification_phone_number_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/views/step_3_camera_view_page.dart';
import 'package:bpay_mobile/src/auth_verification/verification_sent/views/verification_sent_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class Step3PhotoPreviewPage extends StatefulWidget {
  const Step3PhotoPreviewPage({
    super.key,
    required this.idCardSelfieImage,
    required this.idCardData,
    required this.idCardImage,
  });

  final File idCardSelfieImage;
  final IdCardVerificationDataModel idCardData;
  final File idCardImage;

  @override
  State<Step3PhotoPreviewPage> createState() => _Step3PhotoPreviewPageState();
}

class _Step3PhotoPreviewPageState extends State<Step3PhotoPreviewPage> {
  bool isUploaded = false;
  late File image;

  @override
  void initState() {
    setState(() => image = widget.idCardSelfieImage);
    super.initState();
  }

  Future<void> retakePicture(BuildContext context) async {
    final cameras = await availableCameras();
    final frontCamera = cameras[1];
    if (context.mounted) {
      File capturedPhoto = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Step3CameraViewPage(camera: frontCamera),
        ),
      );

      setState(() => image = capturedPhoto);
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
            children: [
              const StepProgressWidget(
                stepLabel: "KTP Selfie",
                currentStep: 3,
                totalStep: 3,
              ),
              const SizedBox(height: 28),
              Container(
                constraints: BoxConstraints(
                  maxHeight: isUploaded ? 390 : 360,
                  maxWidth: 360,
                ),
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image.file(image, fit: BoxFit.cover),
                    ),
                    Visibility(
                      visible: isUploaded,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorResource.green500,
                          ),
                          child: const Icon(
                            Icons.check_rounded,
                            color: ColorResource.white,
                            size: 48,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Text(
                isUploaded
                    ? "This is the final step. Please confirm to complete the verification process."
                    : "If the photo looks clear based on the guide, please upload it straight away.",
                style: TextStyle(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // if (isUploaded) ...[
              //   MultiBlocListener(
              //     listeners: [
              //       BlocListener<IdCardVerificationPhoneNumberBloc,
              //           IdCardVerificationPhoneNumberState>(
              //         listener: (context, state) {
              //           state.when(
              //             initial: () {},
              //             loading: () {
              //               showDialog(
              //                 barrierDismissible: false,
              //                 context: context,
              //                 builder: (context) => const LoadingDialog(),
              //               );
              //             },
              //             success: (data) {
              //               context
              //                   .read<IdCardVerificationBloc>()
              //                   .add(IdCardVerificationEvent.idCardVerification(
              //                     phoneNumber:
              //                         data.data?.data?.phoneNumber ?? "",
              //                     data: widget.idCardData,
              //                     idCardImage: convertImageFileToBase64(
              //                         widget.idCardImage),
              //                     idCardSelfieImage:
              //                         convertImageFileToBase64(image),
              //                   ));
              //             },
              //             failed: (message) {
              //               Navigator.pop(context);
              //               if (kDebugMode) {
              //                 print(message);
              //               }
              //               showSnackBar(context, message);
              //             },
              //           );
              //         },
              //       ),
              //       BlocListener<IdCardVerificationBloc,
              //           IdCardVerificationState>(
              //         listener: (context, state) {
              //           state.when(
              //             initial: () {},
              //             loading: () {},
              //             success: (data) {
              //               Navigator.pop(context);
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) {
              //                     return const VerificationSentPage();
              //                   },
              //                 ),
              //               );
              //             },
              //             failed: (message) {
              //               Navigator.pop(context);
              //               if (kDebugMode) {
              //                 print(message);
              //               }
              //               showSnackBar(
              //                 context,
              //                 "An unexpected error occurred. Please contact our support.",
              //               );
              //             },
              //           );
              //         },
              //       ),
              //     ],
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Confirm",
                  onPressed: () {
                    context.read<IdCardVerificationPhoneNumberBloc>().add(
                        const IdCardVerificationPhoneNumberEvent
                            .getPhoneNumber());
                  },
                  radius: 16,
                  fontSize: 12.sp,
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: AppOutlinedButton(
                      text: "Retake",
                      onPressed: () => retakePicture(context),
                      radius: 16,
                      fontSize: 12.sp,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: AppFilledButton(
                      text: "Upload",
                      onPressed: () {
                        setState(() => isUploaded = true);
                      },
                      radius: 16,
                      fontSize: 12.sp,
                    ),
                  )
                ],
              ),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
            // const SizedBox(height: 72),
          ),
        ),
      ),
    );
  }
}
