// import 'package:bpay_mobile/gen/assets.gen.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:bpay_mobile/utils/extensions.dart';
// import 'package:bpay_mobile/utils/helper.dart';
// import 'package:bpay_mobile/widgets/social_media_widget/bloc/helpdesk_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sizer/sizer.dart';

// class SocialMediaWidget extends StatelessWidget {
//   const SocialMediaWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => HelpdeskBloc()..add(const HelpdeskEvent.getList()),
//       child: Builder(builder: (context) {
//         return BlocBuilder<HelpdeskBloc, HelpdeskState>(
//           builder: (context, state) {
//             return state.maybeWhen(
//               success: (data) {
//                 final tiktokLink = data.data.data
//                     .where((element) =>
//                         element.name.toLowerCase().contains("tiktok"))
//                     .firstOrNull
//                     ?.link;
//                 final instagramLink = data.data.data
//                     .where((element) =>
//                         element.name.toLowerCase().contains("instagram"))
//                     .firstOrNull
//                     ?.link;
//                 final twitterLink = data.data.data
//                     .where((element) =>
//                         element.name.toLowerCase().contains("twitter"))
//                     .firstOrNull
//                     ?.link;
//                 final facebookLink = data.data.data
//                     .where((element) =>
//                         element.name.toLowerCase().contains("facebook"))
//                     .firstOrNull
//                     ?.link;
//                 return Column(
//                   children: [
//                     Text(
//                       "follow us at".capitalizeEach(),
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         fontWeight: FontWeightResource.semiBold,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         InkWell(
//                           borderRadius: BorderRadius.circular(25),
//                           onTap: () {
//                             openUrl(context, tiktokLink ?? "");
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(9),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: ColorResource.red),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: SvgPicture.asset(
//                               Assets.icons.icTiktok,
//                               height: 26,
//                               width: 26,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         InkWell(
//                           borderRadius: BorderRadius.circular(25),
//                           onTap: () {
//                             openUrl(context, instagramLink ?? "");
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(9),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: ColorResource.red),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: SvgPicture.asset(
//                               Assets.icons.icInstagram,
//                               height: 26,
//                               width: 26,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         InkWell(
//                           borderRadius: BorderRadius.circular(25),
//                           onTap: () {
//                             openUrl(context, twitterLink ?? "");
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(9),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: ColorResource.red),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: SvgPicture.asset(
//                               Assets.icons.icTwitter,
//                               height: 26,
//                               width: 26,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         InkWell(
//                           borderRadius: BorderRadius.circular(25),
//                           onTap: () {
//                             openUrl(context, facebookLink ?? "");
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(9),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: ColorResource.red),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: SvgPicture.asset(
//                               Assets.icons.icBaselineFacebook,
//                               height: 26,
//                               width: 26,
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 );
//               },
//               orElse: () {
//                 return const SizedBox();
//               },
//             );
//           },
//         );
//       }),
//     );
//   }
// }
