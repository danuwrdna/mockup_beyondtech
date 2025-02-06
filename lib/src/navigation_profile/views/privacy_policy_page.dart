import 'package:bpay_mobile/src/navigation_profile/bloc/privacy_policy/privacy_policy_bloc.dart';
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

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Privacy Policy",
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
          //   create: (context) =>
          //       PrivacyPolicyBloc()..add(const PrivacyPolicyEvent.getList()),
          //   child: Builder(builder: (context) {
          //     return BlocConsumer<PrivacyPolicyBloc, PrivacyPolicyState>(
          //       listener: (context, state) {
          //         state.maybeWhen(
          //           successList: (data) {
          //             final id = data.data.data.firstOrNull?.id ?? "";
          //             context
          //                 .read<PrivacyPolicyBloc>()
          //                 .add(PrivacyPolicyEvent.getDetail(id));
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
                      body:  SingleChildScrollView(
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
                          padding: const EdgeInsets.fromLTRB(20, 24, 20, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Privacy Policy BePay",
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                "We are committed to maintaining and protecting the privacy of users' personal data when using our services. This Privacy Policy explains how we collect, use, manage, and protect your personal information. By using this application, you agree to the collection and use of information in accordance with this policy.",
                                style: TextStyle(fontSize: 11.sp),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "1. Information Collection",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "We Collect Serveral types of information from users, including:",
                                style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const BulletList(texts: [
                                  "Personal Information: Name, email address, phone number, address, ID number, and other related information required to verify accounts and make transactions.",
                                  "Transaction Information: Transaction details such as amount, date, payment method, and recipient details.",
                                  "Technical Data: Information about the device used, IP address, location, and application usage history."
                                ]),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "2. Use of Information",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "The information we collect is used to :",
                                style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const BulletList(texts: [
                                  "Verify your identity and maintain the security of your account.",
                                  "Process transactions you make through the application.",
                                  "Manage and improve the services and features we offer."
                                      "Send notifications regarding relevant transactions, service updates, or promotions.",
                                  "Fulfil applicable legal and regulatory obligations."
                                ]),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "3. Information Protection",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 17),
                                child: const BulletList(texts: [
                                  "We use appropriate technical and organizational security measures to protect users' personal data from unauthorized access, misuse, or unauthorized disclosure. However, while we strive to protect your personal data, we cannot guarantee 100% security due to cyber risks.",
                                ]),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "4. Sharing Information with Third Parties",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "We do not sell or rent your personal information to third parties. However, we may share your information with third parties in certain situations, such as :",
                                style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const BulletList(texts: [
                                  "With third-party service providers who assist in performing the functions of the app (for example, payment processing or data storage).",
                                  "When required by law, court order, or other legal authority.",
                                  "To protect the rights, privacy, safety, or property of us or other app users."
                                ]),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "5. Privacy Policy Changes",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const BulletList(texts: [
                                  "We reserve the right to update this Privacy Policy from time to time. Any changes will be notified via the application or email. We encourage users to periodically review this policy to stay informed of how we are protecting your personal information.",
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
                            ]
                          )
                        ),
                          
                        
    
                        
                      
                    
                    // loading: () {
                    //   return const Center(child: CircularProgressIndicator());
                    // },
                 
     
                    
                      )
    );
                    }
}
