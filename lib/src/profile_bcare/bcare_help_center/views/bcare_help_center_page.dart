import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bloc/bcare_chat_customer_service_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/bloc/faq_list/faq_list_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/models/bcare_help_center_item_model.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/views/bcare_help_center_detail_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/chat_with_us_widget.dart';
import 'package:bpay_mobile/widgets/faq_menu_item.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class BcareHelpCenterPage extends StatefulWidget {
  const BcareHelpCenterPage({super.key});

  @override
  State<BcareHelpCenterPage> createState() => _BcareHelpCenterPageState();
}

class _BcareHelpCenterPageState extends State<BcareHelpCenterPage> {
  final List<BcareHelpCenterItemModel> bCareTopicItems = [
    BcareHelpCenterItemModel(
      label: 'Transfer',
    ),
    BcareHelpCenterItemModel(
      label: 'Refund',
    ),
    BcareHelpCenterItemModel(
      label: 'Balance / BePay Poin',
    ),
    BcareHelpCenterItemModel(
      label: 'Top up & bills',
    ),
    BcareHelpCenterItemModel(
      label: 'bayar listrik PLN',
    ),
    BcareHelpCenterItemModel(
      label: 'Promo',
    ),
    BcareHelpCenterItemModel(
      label: 'Account Verification and Settings',
    ),
    BcareHelpCenterItemModel(
      label: 'Masalah Aplikasi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 99,
        backgroundColor: ColorResource.primary,
        title: Text(
          "B'Care",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
          color: ColorResource.white,
        ),
        surfaceTintColor: Colors.transparent,
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color(0xFFDCE2FF),
                child: Row(
                  children: [
                    Assets.images.imgCustomerService.image(scale: 1),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "We're always here for you",
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.primary,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          const SizedBox(height: 12),
                          RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                              text:
                                  'Our team is ready to provide you with the support what you need for the best experience with ',
                              style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  color: ColorResource.primary),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'BePay',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeightResource.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Popular Topics',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildPopularFaqList(),
              // TODO: temporal hide for unused feature
              // const SizedBox(height: 40),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20),
              //   child: Text(
              //     'You Can Find What You Need!',
              //     style: GoogleFonts.poppins(
              //       fontSize: 11.sp,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 8),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: LabeledTextField(
              //     enabledColor: ColorResource.grey500,
              //     hintText: "Cari Cara Penyelesaian",
              //     contentPadding: const EdgeInsets.all(8),
              //     prefixIcon: const Icon(Icons.search_outlined),
              //     hintStyle: TextStyle(
              //       fontSize: 12.sp,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 24),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20),
              //   child: Text(
              //     'Question Topics',
              //     style: GoogleFonts.poppins(
              //         fontSize: 13.sp,
              //         fontWeight: FontWeightResource.semiBold),
              //   ),
              // ),
              // const SizedBox(height: 20),
              // ListView.separated(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: bCareTopicItems.length,
              //   itemBuilder: (context, index) {
              //     final item = bCareTopicItems[index];
              //     return FaqTopicItem(
              //       label: item.label,
              //     );
              //   },
              //   separatorBuilder: (context, index) =>
              //       const SizedBox(height: 4),
              // ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Complaints Service',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Always There To Serve You',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 40),
                child: ChatWithUs(),
              )
            ],
          ),
        ),
      ),
    );
  }

  //   return BlocProvider(
  //     create: (context) => FaqListBloc()..add(const FaqListEvent.getList()),
  //     child: Builder(builder: (context) {
  //       return BlocBuilder<FaqListBloc, FaqListState>(
  //         builder: (context, state) {
  //           return state.maybeWhen(
  //             success: (data) {
  //               final topicList = data.data.data.take(5).toList();
  //               return ListView.builder(
  //                 shrinkWrap: true,
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 itemCount: topicList.length,
  //                 itemBuilder: (context, index) {
  //                   final item = topicList[index];
  //                   return FaqMenuItem(
  //                     label: "${item.title}",
  //                     dividerColor: Colors.grey,
  //                     onTap: () {
  //                       Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                           builder: (context) => BcareHelpCenterDetail(
  //                             topicId: "${item.id}",
  //                           ),
  //                         ),
  //                       );
  //                     },
  //                   );
  //                 },
  //               );
  //             },
  //             failed: (message) {
  //               return const SizedBox();
  //             },
  //             orElse: () {
  //               return Padding(
  //                 padding: const EdgeInsets.symmetric(
  //                   vertical: 4,
  //                   horizontal: 8,
  //                 ),
  //                 child: Shimmer.fromColors(
  //                   baseColor: ColorResource.grey200,
  //                   highlightColor: ColorResource.white,
  //                   child: Container(
  //                     height: 64,
  //                     width: 100.w,
  //                     decoration: BoxDecoration(
  //                       color: ColorResource.grey200,
  //                       borderRadius: BorderRadius.circular(6),
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           );
  //         },
  //       );
  //     }),
  //   );
  // }

  Widget _buildPopularFaqList() {
    return Column(
      children: [],
    );
  }
}
