import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/models/bcare_get_message_model.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/models/bcare_chat_enum.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class BubbleChat extends StatelessWidget {
  const BubbleChat({
    super.key,
    required this.chatData,
  });

  final List<GetMessageData> chatData;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      padding: const EdgeInsets.only(right: 15, bottom: 20),
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        final chatItem = chatData[index];
        final time = chatItem.createdAt ;
        final formattedTime = time != null
            ? DateFormat('hh:mm a').format(time)
            : 'Unknown';

        return Align(
          alignment: chatItem.sender == SenderMessageType.user.name
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Container(
            constraints: BoxConstraints(maxWidth: 70.w, minWidth: 20.w),
            margin: const EdgeInsets.only(bottom: 10, left: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: chatItem.sender == SenderMessageType.user.name
                  ? ColorResource.primary
                  : ColorResource.grey300,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.sp),
                    child: Text(
                      chatItem.message ?? "",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: chatItem.sender == SenderMessageType.user.name
                            ? ColorResource.white
                            : ColorResource.black100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 16),
                        Text(
                          formattedTime,
                          style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                            color:
                                chatItem.sender == SenderMessageType.user.name
                                    ? ColorResource.white
                                    : ColorResource.black100,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
