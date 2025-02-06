import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/bloc/bcare_get_message_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/models/bcare_get_message_model.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_post_message/bloc/bcare_post_message_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/models/bcare_chat_enum.dart';

import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/bubble_chat.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

class BcareChatPage extends StatefulWidget {
  const BcareChatPage({super.key, this.message});

  final String? message;

  @override
  State<BcareChatPage> createState() => _BcareChatPageState();
}

class _BcareChatPageState extends State<BcareChatPage> {
  List<GetMessageData> chat = [];
  String fullname = "";

  @override
  void initState() {
    context
        .read<BcareGetMessageBloc>()
        .add(const BcareGetMessageEvent.getMessage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Assets.icons.icChatCustomerService.image(),
            const SizedBox(width: 16),
            Column(
              children: [
                Text(
                  "B'Care",
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.icons.icOnline.image(),
                    const SizedBox(width: 6),
                    Text(
                      "Online",
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: BlocListener<BcareGetMessageBloc, BcareGetMessageState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {},
              success: (List<GetMessageData> messages) {
                setState(() {
                  chat.clear();
                  chat.addAll(messages);
                });
              },
              failed: (message) {});
        },
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: BubbleChat(
                  chatData: chat,
                ),
              ),
            ),
            BottomInputText(
              onSendMessage: (String message) {
                setState(() {
                  DateTime time = DateTime.now().toUtc();
                  chat.add(
                    GetMessageData(
                      message: message,
                      createdAt: time,
                      fullname: fullname,
                      sender: SenderMessageType.user.name,
                    ),
                  );
                  context
                      .read<BcarePostMessageBloc>()
                      .add(BcarePostMessageEvent.sendMessage(message));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomInputText extends StatefulWidget {
  const BottomInputText({
    super.key,
    required this.onSendMessage,
  });

  final Function(String) onSendMessage;

  @override
  State<BottomInputText> createState() => _BottomInputTextState();
}

class _BottomInputTextState extends State<BottomInputText> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      color: const Color(0xFFDCE2FF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              width: 300,
              child: LabeledTextField(
                enabledColor: ColorResource.grey500,
                hintText: "Type Here",
                contentPadding: const EdgeInsets.all(8),
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontStyle: FontStyle.italic,
                ),
                controller: _controller,
              ),
            ),
            const SizedBox(width: 16),
            InkWell(
              onTap: () {
                String newMessage = _controller.text;

                if (newMessage.isNotEmpty) {
                  widget.onSendMessage(newMessage);
                  _controller.clear();
                }
              },
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorResource.primary),
                      width: 48,
                      height: 44,
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Assets.icons.icSendMessage.image(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
