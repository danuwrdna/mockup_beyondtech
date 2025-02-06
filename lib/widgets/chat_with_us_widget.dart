import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bloc/bcare_chat_customer_service_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/views/bcare_chat_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ChatWithUs extends StatelessWidget {
  const ChatWithUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonOutlinedContainer(
      borderColor: ColorResource.primary,
      height: 135,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFilledButton(
                    text: 'Chat with Us',
                    fontSize: 10.sp,
                    onPressed: () {
                      // context
                      //     .read<BcareChatCustomerServiceBloc>()
                      //     .add(const BcareChatCustomerServiceEvent
                      //         .getSession());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         const BcareChatPage(),
                      //   ),
                      // );
                    },
                    radius: 10,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Assets.icons.icRoundedMessage.image(),
                      const SizedBox(width: 10),
                      Assets.icons.icRoundedPhone.image(),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Assets.images.imgComplainService.image(),
          ],
        ),
      ),
    );
  }
}
