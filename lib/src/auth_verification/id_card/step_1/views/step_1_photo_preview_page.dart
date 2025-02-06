import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/bloc/step_1_id_card_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/model/ocr_ktp_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/views/step_1_camera_view_page.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/views/step_2_check_form_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class Step1PhotoPreviewPage extends StatefulWidget {
  const Step1PhotoPreviewPage({super.key, required this.capturedPhoto});

  final File capturedPhoto;

  @override
  State<Step1PhotoPreviewPage> createState() => _Step1PhotoPreviewPageState();
}

class _Step1PhotoPreviewPageState extends State<Step1PhotoPreviewPage> {
  bool isUploaded = false;
  bool isOcrSuccess = false;
  late File image;
  OcrKtpResponseData? data;

  @override
  void initState() {
    setState(() => image = widget.capturedPhoto);
    super.initState();
  }

  Future<void> retakePicture(BuildContext context) async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    if (context.mounted) {
      File capturedPhoto = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Step1CameraViewPage(camera: firstCamera),
        ),
      );

      setState(() => image = capturedPhoto);
    }
  }

  void extractIdCardData() {
    String base64Image = convertImageFileToBase64(image);
    context
        .read<Step1IdCardBloc>()
        .add(Step1IdCardEvent.extractIdCardData(base64Image));
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
                stepLabel: "KTP Photo",
                currentStep: 1,
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isOcrSuccess
                                ? ColorResource.green500
                                : ColorResource.error,
                          ),
                          child: Icon(
                            isOcrSuccess
                                ? Icons.check_rounded
                                : Icons.close_rounded,
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
                !isUploaded
                    ? "If the photo looks clear based on the guide, please upload it straight away."
                    : isOcrSuccess
                        ? "Your data is filled in automatically on the next page. Please check the data and make sure it is correct."
                        : "Your data is not automatically filled in on the next page due to a failure to read the document. Please manually enter the data and ensure its accuracy.",
                style: TextStyle(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              if (isUploaded) ...[
                SizedBox(
                  width: 100.w,
                  child: AppFilledButton(
                    text: "Confirm",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Step2CheckFormPage(
                            data: data,
                            idCardImage: image,
                          ),
                        ),
                      );
                    },
                    radius: 16,
                    fontSize: 12.sp,
                  ),
                )
              ] else ...[
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
                    BlocListener<Step1IdCardBloc, Step1IdCardState>(
                      listener: (context, state) {
                        state.when(
                          initial: () {},
                          loading: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => const LoadingDialog(),
                            );
                          },
                          success: (data) {
                            Navigator.pop(context);
                            setState(() {
                              isUploaded = true;
                              isOcrSuccess = true;
                              this.data = data.data;
                            });
                          },
                          failed: (message) {
                            Navigator.pop(context);
                            setState(() {
                              isUploaded = true;
                              isOcrSuccess = false;
                            });
                            if (kDebugMode) {
                              print(message);
                            }
                          },
                        );
                      },
                      child: Expanded(
                        child: AppFilledButton(
                          text: "Upload",
                          onPressed: () => extractIdCardData(),
                          radius: 16,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ],
              const SizedBox(height: 72),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
