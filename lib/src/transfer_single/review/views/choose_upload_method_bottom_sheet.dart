import 'package:bpay_mobile/src/transfer_single/upload/views/single_transfer_upload_page.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChooseUploadMethodBottomSheet extends StatefulWidget {
  const ChooseUploadMethodBottomSheet({
    super.key,
    this.iconTint = ColorResource.blue850,
    this.onTap,
  });

  final Color iconTint;
  final Function? onTap;

  @override
  State<ChooseUploadMethodBottomSheet> createState() =>
      _ChooseUploadMethodBottomSheetState();
}

class _ChooseUploadMethodBottomSheetState
    extends State<ChooseUploadMethodBottomSheet> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      animationController: AnimationController(vsync: this),
      onClosing: () {},
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Choose Upload Method",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SingleTransferUploadPage();
                            },
                          ),
                        );
                      },
                      child: CommonOutlinedContainer(
                        borderColor: ColorResource.black100.withOpacity(0.8),
                        padding: const EdgeInsets.only(top: 16, bottom: 14),
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: widget.iconTint,
                              size: 32,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Use Camera",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.semiBold,
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
                        Navigator.pop(context);
                        if (widget.onTap != null) {
                          widget.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SingleTransferUploadPage();
                              },
                            ),
                          );
                        }
                      },
                      child: CommonOutlinedContainer(
                        borderColor: ColorResource.black100.withOpacity(0.8),
                        padding: const EdgeInsets.only(top: 16, bottom: 14),
                        child: Column(
                          children: [
                            Icon(
                              Icons.image_outlined,
                              color: widget.iconTint,
                              size: 32,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Take From Gallery",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
