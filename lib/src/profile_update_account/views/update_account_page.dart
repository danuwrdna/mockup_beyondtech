import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/views/change_password_page.dart';
import 'package:bpay_mobile/widgets/common_menu_item.dart';
import 'package:bpay_mobile/widgets/social_media_widget/view/social_media_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../profile_change_pin/change_pin_form/models/change_pin_state_enum.dart';
import '../../profile_change_pin/change_pin_form/views/change_pin_page.dart';

class UpdateAccountDataPage extends StatelessWidget {
  const UpdateAccountDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "update account data".capitalizeEach(),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CommonMenuItem(
              leading: SvgPicture.asset(Assets.icons.icChangePassword),
              label: "change password".capitalizeEach(),
              trailing: Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 24.sp,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChangePasswordPage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            CommonMenuItem(
              leading: SvgPicture.asset(Assets.icons.icChangePin),
              label: "change PIN".capitalizeEach(),
              trailing: Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 24.sp,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChangePinPage(
                        state: ChangePinState.oldPin,
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            const Spacer(),
            // const SocialMediaWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
