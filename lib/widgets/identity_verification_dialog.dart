// import 'package:bpay_mobile/gen/assets.gen.dart';
// import 'package:bpay_mobile/src/auth_verification/choose_verification_option/views/verification_data_option_page.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:bpay_mobile/widgets/app_filled_button.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class IdentityVerificationDialog extends StatelessWidget {
//   const IdentityVerificationDialog({
//     super.key,
//     this.isPending = false,
//   });

//   final bool isPending;

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: const EdgeInsets.symmetric(horizontal: 40),
//       backgroundColor: ColorResource.white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       surfaceTintColor: Colors.transparent,
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             right: 0,
//             child: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.close),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(16, 28, 16, 24),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Assets.images.imgVerificationDialog.image(scale: 2),
//                 const SizedBox(height: 12),
//                 Text.rich(
//                   TextSpan(
//                     text: isPending
//                         ? "Your Data Is Currently Being Verified. Please Wait While We Complete the Process Shortly."
//                         : "Let's Complete Your Data Verification to Be Able to Enjoy the Convenience of Transactions with ",
//                     children: !isPending
//                         ? [
//                             const TextSpan(
//                               text: "Beyond",
//                               style: TextStyle(
//                                 color: ColorResource.blue850,
//                                 fontWeight: FontWeightResource.semiBold,
//                               ),
//                             )
//                           ]
//                         : null,
//                   ),
//                   style: TextStyle(fontSize: 12.sp),
//                   textAlign: TextAlign.center,
//                 ),
//                 if (!isPending) ...[
//                   const SizedBox(height: 20),
//                   AppFilledButton(
//                     text: "Ok, Continue",
//                     onPressed: () {
//                       Navigator.pop(context);
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return const VerificationDataOptionPage(
//                               isShowBackIcon: true,
//                             );
//                           },
//                         ),
//                       );
//                     },
//                   )
//                 ],
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
