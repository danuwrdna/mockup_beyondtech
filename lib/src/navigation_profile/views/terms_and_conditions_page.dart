import 'package:bpay_mobile/src/navigation_profile/bloc/terms_and_conditions/terms_and_conditions_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bloc/bcare_chat_customer_service_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/bullet_list.dart';
import 'package:bpay_mobile/widgets/chat_with_us_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/social_media_widget/view/social_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Term & Conditions",
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeightResource.semiBold,
                color: ColorResource.blue850),
          ),
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              color: ColorResource.blue850,
              size: 24.sp,
            ),
          ),
          shadowColor: ColorResource.black100.withOpacity(0.16),
          elevation: 4,
        ),
        // body: BlocListener<BcareChatCustomerServiceBloc,
        //     BcareChatCustomerServiceState>(
        //   listener: (context, state) {
        //     state.when(
        //         initial: () {},
        //         loading: () {},
        //         success: () {},
        //         failed: (message) {
        //           showSnackBar(context, 'Please Login to use bcare');
        //           Navigator.pop(context);
        //         });
        //   },
        // child: BlocProvider(
        //   create: (context) => TermsAndConditionsBloc()
        //     ..add(const TermsAndConditionsEvent.getList()),
        //   child: Builder(builder: (context) {
        //     return BlocConsumer<TermsAndConditionsBloc,
        //         TermsAndConditionsState>(
        //       listener: (context, state) {
        //         state.maybeWhen(
        //           successList: (data) {
        //             final id = data.data.data.firstOrNull?.id ?? "";
        //             context
        //                 .read<TermsAndConditionsBloc>()
        //                 .add(TermsAndConditionsEvent.getDetail(id));
        //           },
        //           failed: (message) {
        //             if (!message.contains("not found")) {
        //               showSnackBar(context, message);
        //             }
        //           },
        //           orElse: () {},
        //         );
        //       },
        //       builder: (context, state) {
        //         return state.maybeWhen(
        //           success: (data) {
        //             final markdownData =
        //                 data.data.data.message.replaceAll("\\n", "\n");
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MarkdownBody(data: markdownData),
                    const SizedBox(height: 40),
                    // const SocialMediaWidget(),
                    const SizedBox(height: 60),
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
                    const ChatWithUs(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Terms & Conditions",
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "1. Use of Services",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "This application can only be used by users who have registered and agreed to the applicable terms and conditions",
                              "Users are required to maintain the confidentiality of account information, including passwords and other login data. All activities that occur through the user's account are the user's responsibility.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "2. Transaction Policy",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "Users can make various payment transactions, transfers, and top-up balances through this application according to the available payment methods",
                              "Every successful transaction will receive a notification or confirmation through the application. Users are required to ensure that the transaction information entered is correct",
                              "We have the right to reject or cancel transactions that are considered suspicious or unlawful.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "3. Service Fee",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "Some transactions may be subject to an administration fee in accordance with applicable provisions. Fees will be informed to the user before the transaction is processed.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "4. Limitation of Liability",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "We are not responsible for any loss or damage arising from the use of the application, including but not limited to transaction failures, technical disruptions, or unauthorized access by third parties.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "5. Security and Privacy",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "We are committed to maintaining the security and privacy of user data in accordance with applicable privacy policies. User personal data will be treated confidentially and will not be shared without the user's permission, unless required by law.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "6. Abuse",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "Any abuse of the service, including but not limited to fraud, illegal fund transfers, or actions that harm others, may result in suspension or permanent account closure.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "7. Changes to Terms and Conditions",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "We reserve the right to change these terms and conditions at any time by providing notification via the application or email. Users are advised to periodically check the latest terms and conditions.",
                            ]),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            "8. Governing Law",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.medium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const BulletList(texts: [
                              "These terms and conditions are governed by the laws of the local jurisdiction. Any disputes that arise will be resolved in accordance with applicable legal procedures.",
                            ]),
                          ),
                          const SizedBox(height: 40),
                          // const SocialMediaWidget(),
                          const SizedBox(height: 60),
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
                          const ChatWithUs()
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
