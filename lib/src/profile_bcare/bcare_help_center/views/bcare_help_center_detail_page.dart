import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bloc/bcare_chat_customer_service_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/bloc/faq_detail/faq_detail_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/views/bcare_chat_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/chat_with_us_widget.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BcareHelpCenterDetail extends StatelessWidget {
  const BcareHelpCenterDetail({super.key, required this.topicId});

  final String topicId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Help Center",
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          surfaceTintColor: Colors.transparent,
        ),
        // body: BlocListener<BcareChatCustomerServiceBloc,
        //         BcareChatCustomerServiceState>(
        //     listener: (context, state) {
        //       state.when(
        //           initial: () {},
        //           loading: () {},
        //           success: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => const BcareChatPage(),
        //               ),
        //             );
        //           },
        //           failed: (message) {
        //             Navigator.pop(context);
        //           });
        //     },
            // child: BlocProvider(
            //   create: (context) =>
            //       FaqDetailBloc()..add(FaqDetailEvent.getDetail(topicId)),
            //   child: Builder(builder: (context) {
            //     return BlocBuilder<FaqDetailBloc, FaqDetailState>(
            //       builder: (context, state) {
            //         return state.maybeWhen(
            //           success: (data) {
            //             final markdownData =
            //                 data.data.data.message.replaceAll("\\n", "\n");
            body: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MarkdownBody(data: markdownData),
                    const SizedBox(height: 28),
                    Center(
                      child: CommonOutlinedContainer(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        radius: 8,
                        width: 280,
                        borderColor: ColorResource.black100.withOpacity(0.6),
                        child: Column(
                          children: [
                            Text(
                              'Was this explanation Helpful',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icons.icLikeButton.image(),
                                Assets.icons.icDislikeButton.image(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Your assessment really helps us to improve the quality of this explanation?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontStyle: FontStyle.italic, fontSize: 9.sp),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Complaints Service',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Always There To Serve You',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: ChatWithUs(),
                    )
                  ],
                )));
  }
}
