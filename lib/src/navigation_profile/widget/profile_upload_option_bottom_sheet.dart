import 'dart:io';

import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class ProfileUploadOptionBottomSheet extends StatefulWidget {
  const ProfileUploadOptionBottomSheet({
    super.key,
    required this.onImageSelected,
  });

  final void Function(String image) onImageSelected;

  @override
  State<ProfileUploadOptionBottomSheet> createState() =>
      _ProfileUploadOptionBottomSheetState();
}

class _ProfileUploadOptionBottomSheetState
    extends State<ProfileUploadOptionBottomSheet> {
  final ImagePicker _picker = ImagePicker();
  final List<String> _allowedExtensions = ['jpg', 'jpeg'];

  Future<void> _pickImage(BuildContext context) async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final extension = image.path.split('.').last.toLowerCase();
      if (_allowedExtensions.contains(extension)) {
        final imageFile = File(image.path);
        final String imageString = convertImageFileToBase64(imageFile);
        widget.onImageSelected(imageString);
        if (context.mounted) {
          Navigator.pop(context);
        }
      } else {
        if (context.mounted) {
          showSnackBar(
            context,
            "Invalid File Type, Please select a JPG or JPEG image.",
          );
        }
      }
    }
  }

  Future<void> _takePicture(BuildContext context) async {
    final image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 25);
    if (image != null) {
      final imageFile = File(image.path);
      final String imageString = convertImageFileToBase64(imageFile);
      widget.onImageSelected(imageString);
      if (context.mounted) {
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Choose Option",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeightResource.semiBold,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _takePicture(context);
                  },
                  child: CommonOutlinedContainer(
                    borderColor: ColorResource.blue850,
                    padding: const EdgeInsets.fromLTRB(14, 24, 14, 20),
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.icons.icPictureTake),
                        const SizedBox(height: 20),
                        Text(
                          "Take a Picture",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.blue850,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _pickImage(context);
                  },
                  child: CommonOutlinedContainer(
                    borderColor: ColorResource.blue850,
                    padding: const EdgeInsets.fromLTRB(14, 24, 14, 20),
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.icons.icPictureUpload),
                        const SizedBox(height: 20),
                        Text(
                          "Upload Photo",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.blue850,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
