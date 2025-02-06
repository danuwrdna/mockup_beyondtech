import 'dart:io';

import 'package:bpay_mobile/utils/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Step1CameraViewPage extends StatefulWidget {
  const Step1CameraViewPage({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  State<Step1CameraViewPage> createState() => _Step1CameraViewPageState();
}

class _Step1CameraViewPageState extends State<Step1CameraViewPage> {
  late CameraController controller;
  late Future<void> initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    initializeControllerFuture = controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> takePhoto(BuildContext context) async {
    try {
      await initializeControllerFuture;
      XFile image = await controller.takePicture();
      File imagePath = File(image.path);
      if (context.mounted) {
        Navigator.pop(context, imagePath);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black100.withOpacity(0.8),
      body: FutureBuilder<void>(
        future: initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                Center(child: CameraPreview(controller)),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(
                        "KTP Photo",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 100.w / 14,
                      horizontal: 100.w / 50,
                    ),
                    width: 100.w - 40,
                    height: 100.w / 1.7,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorResource.white, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 100.w / 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorResource.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "NIK",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: ColorResource.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 100.w / 25),
                        Container(
                          margin: EdgeInsets.only(
                            top: 100.w / 25,
                            right: 100.w / 50,
                          ),
                          width: 100.w / 5,
                          height: 100.w / 3.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResource.white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () => takePhoto(context),
                        splashFactory: NoSplash.splashFactory,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorResource.blue400,
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: ColorResource.blue900,
                            size: 54,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Place your KTP in the specified area.",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorResource.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                )
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
