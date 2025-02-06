import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/user_referral/get_user_referral_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

class InviteFriendsPage extends StatefulWidget {
  const InviteFriendsPage({super.key});

  @override
  State<InviteFriendsPage> createState() => _InviteFriendsPageState();
}

class _InviteFriendsPageState extends State<InviteFriendsPage> {
  String? referralCode;

  // @override
  // void initState() {
  //   context
  //       .read<GetUserReferralBloc>()
  //       .add(const GetUserReferralEvent.getUserReferral());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invite Friends",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              color: ColorResource.white,
              fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 80,
        backgroundColor: ColorResource.primary,
        leading: IconButton(
          color: ColorResource.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      // body: BlocListener<GetUserReferralBloc, GetUserReferralState>(
      //   listener: (context, state) {
      //     state.when(
      //         initial: () {},
      //         loading: () {},
      //         success: (data) {
      //           setState(() {
      //             referralCode = data.data?.data?.referral;
      //           });
      //         },
      //         failed: (message) {});
      //   },
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 168,
            color: const Color(0xFFE9EDFF),
            child: Center(
              child: Assets.images.imgInviteFriends.image(
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Come on, invite friends",
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 9),
              Assets.icons.icGift.image()
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Invite your friends and enjoy economical transaction services without any hassle.",
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          CommonOutlinedContainer(
            height: 190,
            width: 320,
            borderColor: ColorResource.black100,
            borderWidth: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Referral Code",
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: ColorResource.blue400,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Text(
                            referralCode ?? "",
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(
                                  text: referralCode ?? "",
                                ),
                              ).then(
                                (value) {
                                  if (context.mounted) {
                                    showSnackBar(context,
                                        "Referral Coder berhasil disalin");
                                  }
                                },
                              );
                            },
                            child: Text(
                              "Copy",
                              style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.primary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 70.w,
                    child: AppFilledButton(
                      text: "Share Referral Code",
                      fontSize: 12.sp,
                      backgroundColor: ColorResource.blue850,
                      onPressed: () async {
                        String referralMessage =
                            "Want to transfer to another banks with cheaper Fees? Let's install and use BePay so you can feel the pleasure of transferring to other banks without fees! Create your account here: $referralCode";
                        Clipboard.setData(ClipboardData(text: referralMessage));
                        await Share.share(referralMessage);
                      },
                      radius: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
