import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/bloc/passport_verification_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/views/camera_view_page.dart';
import 'package:bpay_mobile/src/auth_verification/passport/summary/models/passport_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/verification_sent/views/verification_sent_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class PhotoPreviewPage extends StatefulWidget {
  const PhotoPreviewPage({
    super.key,
    required this.passportImage,
    required this.passportData,
  });

  final File passportImage;
  final PassportVerificationDataModel passportData;

  @override
  State<PhotoPreviewPage> createState() => _PhotoPreviewPageState();
}

class _PhotoPreviewPageState extends State<PhotoPreviewPage> {
  bool isUploaded = false;
  late File image;

  @override
  void initState() {
    setState(() => image = widget.passportImage);
    super.initState();
  }

  Future<void> retakePicture(BuildContext context) async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    if (context.mounted) {
      File capturedPhoto = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CameraViewPage(camera: firstCamera),
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
                stepLabel: "Passport Photo",
                currentStep: 2,
                totalStep: 2,
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
              //   BlocListener<PassportVerificationBloc,
              //       PassportVerificationState>(
              //     listener: (context, state) {
              //       state.when(
              //         initial: () {},
              //         loading: () {
              //           showDialog(
              //             barrierDismissible: false,
              //             context: context,
              //             builder: (context) => const LoadingDialog(),
              //           );
              //         },
              //         success: (data) {
              //           Navigator.pop(context);
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) {
              //                 return const VerificationSentPage();
              //               },
              //             ),
              //           );
              //         },
              //         failed: (message) {
              //           Navigator.pop(context);
              //           if (kDebugMode) {
              //             print(message);
              //           }
              //           showSnackBar(context, message);
              //         },
              //       );
              //     },
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Confirm",
                  onPressed: () {
                    // context
                    //     .read<PassportVerificationBloc>()
                    //     .add(PassportVerificationEvent.passportVerification(
                    //       data: widget.passportData,
                    //       passportImage: convertImageFileToBase64(image),
                    //     ));
                  },
                  radius: 16,
                  fontSize: 12.sp,
                ),
              ),

              // ] else ...[
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
              const SizedBox(height: 72),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
