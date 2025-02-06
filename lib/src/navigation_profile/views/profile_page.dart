import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/auth_register_check/views/sign_check_page.dart';
import 'package:bpay_mobile/src/auth_verification/choose_verification_option/views/verification_data_option_page.dart';
import 'package:bpay_mobile/src/boarding/models/language_enum.dart';
import 'package:bpay_mobile/src/boarding/models/locale_enum.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_type_enum.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/change_profile_picture/change_profile_picture_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/logout/logout_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/profile/get_profile_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/user_validation/profile_user_validation_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/views/invite_friends_page.dart';
import 'package:bpay_mobile/src/navigation_profile/views/privacy_policy_page.dart';
import 'package:bpay_mobile/src/navigation_profile/views/terms_and_conditions_page.dart';
import 'package:bpay_mobile/src/navigation_profile/widget/profile_upload_option_bottom_sheet.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/views/bcare_help_center_page.dart';
import 'package:bpay_mobile/src/profile_update_account/views/update_account_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/common_menu_item.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/social_media_widget/view/social_media_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final LocalAuthentication auth = LocalAuthentication();
  final BiometricsHelper biometricsHelper = BiometricsHelper();

  Language? language;
  bool isBiometricActive = false;
  int selectedIndex = 1;

  String? fullName;
  String? email;
  String? phoneNumber;
  String? profileImage;
  String? username;

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<GetProfileBloc>().add(const GetProfileEvent.getProfileData());
  //   context
  //       .read<ProfileUserValidationBloc>()
  //       .add(const ProfileUserValidationEvent.getUserValidation());
  //   biometricsHelper.checkBiometrics();
  //   _loadBiometricStatus();
  // }

  _launchPlayStore() async {
    final Uri url = Uri.parse('https://play.google.com/store/apps');

    if (!await launchUrl(url)) {
      throw Exception('Could not launch ');
    }
  }

  Future<void> _loadBiometricStatus() async {
    bool useBiometric = await biometricsHelper.getBiometricPreferences();
    setState(() {
      isBiometricActive = useBiometric;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: BlocBuilder<GetProfileBloc, GetProfileState>(
      //   builder: (context, state) {
      //     return state.when(
      //       initial: () {
      //         return const Center(child: Text('Initial State'));
      //       },
      //       loading: () {
      //         return const Center(child: CircularProgressIndicator());
      //       },
      //       success: (data) {
      //         fullName = data.getProfileData?.data?.name;
      //         email = data.getProfileData?.data?.email;
      //         phoneNumber = data.getProfileData?.data?.phoneNumber;
      //         profileImage = data.getProfileData?.data?.imageUrl;
      //         username = data.getProfileData?.data?.username;

              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildProfileSection(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // _buildVerificationSection(),
                          Text(
                            LocaleKeys.profile_account_security.tr(),
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          CommonMenuItem(
                            leading:
                                SvgPicture.asset(Assets.icons.icProfileInvite),
                            label: LocaleKeys.profile_invite_friends.tr(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const InviteFriendsPage();
                              }));
                            },
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading:
                                SvgPicture.asset(Assets.icons.icProfileUpdate),
                            label: LocaleKeys.profile_update_acc.tr(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const UpdateAccountDataPage();
                                  },
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading: SvgPicture.asset(
                              Assets.icons.icProfileLanguage,
                            ),
                            label: LocaleKeys.profile_language.tr(),
                            trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8),
                                elevation: 0,
                                backgroundColor:
                                    ColorResource.blue900.withOpacity(0.16),
                                surfaceTintColor: ColorResource.grey300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                splashFactory: NoSplash.splashFactory,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      insetPadding: const EdgeInsets.all(100),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      surfaceTintColor: Colors.transparent,
                                      backgroundColor: ColorResource.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: ListView.separated(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                CountryFlag.fromLanguageCode(
                                                  LocaleEnum.values[index].name,
                                                  height: 32,
                                                  width: 32,
                                                ),
                                                const SizedBox(width: 16),
                                                Text(
                                                  LocaleEnum
                                                      .values[index].label,
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeightResource
                                                            .semiBold,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Radio<String>(
                                                  value: LocaleEnum
                                                      .values[index].name,
                                                  groupValue: context
                                                      .locale.languageCode,
                                                  onChanged: (lang) {
                                                    context.setLocale(Locale(
                                                      lang ??
                                                          LocaleEnum.en.name,
                                                    ));
                                                    Navigator.pop(context);
                                                  },
                                                )
                                              ],
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const Divider(
                                              color: ColorResource.grey300,
                                            );
                                          },
                                          itemCount: Language.values.length,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  CountryFlag.fromLanguageCode(
                                    context.locale.languageCode,
                                    height: 25,
                                    width: 40,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    LocaleEnum.values
                                        .firstWhere(
                                            (locale) =>
                                                locale.name ==
                                                context.locale.languageCode,
                                            orElse: () => LocaleEnum.en)
                                        .label,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.sp,
                                    color: ColorResource.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading: SvgPicture.asset(
                                Assets.icons.icProfileBiometric),
                            label: LocaleKeys.profile_biomethric.tr(),
                            trailing: Switch(
                                activeTrackColor: ColorResource.red,
                                trackOutlineColor: !isBiometricActive
                                    ? const WidgetStatePropertyAll(
                                        ColorResource.grey400,
                                      )
                                    : const WidgetStatePropertyAll(
                                        ColorResource.red),
                                inactiveThumbColor: ColorResource.grey400,
                                value: isBiometricActive,
                                onChanged: (value) async {
                                  if (value) {
                                    bool authenticated = await biometricsHelper
                                        .authenticateBiometric(context);
                                    if (authenticated) {
                                      setState(() {
                                        isBiometricActive = true;
                                      });
                                      await biometricsHelper
                                          .saveBiometricPreference(true);
                                    } else {
                                      setState(() {
                                        isBiometricActive = false;
                                      });
                                      await biometricsHelper
                                          .saveBiometricPreference(false);
                                      await biometricsHelper
                                          .saveBiometricPreference(false);
                                    }
                                  } else {
                                    setState(() {
                                      isBiometricActive = false;
                                    });
                                    await biometricsHelper
                                        .saveBiometricPreference(false);
                                  }
                                }),
                          ),
                          const SizedBox(height: 12),
                          // CommonMenuItem(
                          //   leading: SvgPicture.asset(Assets.icons.icProfileSwitch),
                          //   label: "Switch Account",
                          //   trailing: Icon(
                          //     Icons.keyboard_arrow_right_outlined,
                          //     size: 24.sp,
                          //   ),
                          //   onTap: () => showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return Dialog(
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8),
                          //         ),
                          //         backgroundColor: ColorResource.white,
                          //         surfaceTintColor: Colors.transparent,
                          //         child: Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 16, vertical: 20),
                          //           child: Column(
                          //             crossAxisAlignment: CrossAxisAlignment.start,
                          //             mainAxisSize: MainAxisSize.min,
                          //             children: [
                          //               Text(
                          //                 'Switch Account',
                          //                 style: TextStyle(
                          //                   fontSize: 12.sp,
                          //                   fontWeight: FontWeightResource.semiBold,
                          //                 ),
                          //               ),
                          //               const SizedBox(height: 20),
                          //               CommonOutlinedContainer(
                          //                 borderColor: ColorResource.primary,
                          //                 padding: const EdgeInsets.only(
                          //                   left: 14,
                          //                 ),
                          //                 child: Row(
                          //                   children: [
                          //                     const Icon(Icons.person),
                          //                     const SizedBox(width: 16),
                          //                     const Text("Ahmad Arif"),
                          //                     const Spacer(),
                          //                     Radio(
                          //                       value: 1,
                          //                       groupValue: selectedIndex,
                          //                       onChanged: (value) {
                          //                         setState(() {
                          //                           selectedIndex = value!;
                          //                         });
                          //                       },
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               const SizedBox(height: 20),
                          //               Align(
                          //                 alignment: Alignment.center,
                          //                 child: Text(
                          //                   'Add New Account',
                          //                   style: TextStyle(
                          //                     fontSize: 12.sp,
                          //                     color: ColorResource.primary,
                          //                   ),
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       );
                          //     },
                          //   ),
                          // ),
                          const SizedBox(height: 24),
                          Text(
                            "general".capitalizeEach(),
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          CommonMenuItem(
                            leading:
                                SvgPicture.asset(Assets.icons.icProfileBcare),
                            label: "B'Care".capitalizeEach(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                              color: ColorResource.blue850,
                            ),
                            labelColor: ColorResource.blue850,
                            dividerColor: ColorResource.blue850,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BcareHelpCenterPage();
                                  },
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading:
                                SvgPicture.asset(Assets.icons.icProfileRate),
                            label: LocaleKeys.profile_rateus.tr(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                            ),
                            onTap: () {
                              _launchPlayStore();
                            },
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading: SvgPicture.asset(
                              Assets.icons.icProfileTermsConditions,
                            ),
                            label: LocaleKeys.profile_tnc.tr(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const TermsAndConditionsPage();
                              }));
                            },
                          ),
                          const SizedBox(height: 12),
                          CommonMenuItem(
                            leading: SvgPicture.asset(
                              Assets.icons.icProfilePrivacyPolicy,
                            ),
                            label: LocaleKeys.profile_privacypolicy.tr(),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 24.sp,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PrivacyPolicyPage();
                              }));
                            },
                          ),
                          const SizedBox(height: 12),
                          BlocListener<LogoutBloc, LogoutState>(
                            listener: (context, state) {
                              state.when(
                                initial: () {},
                                loading: () {
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => const LoadingDialog(),
                                  );
                                },
                                success: () {
                                  Navigator.pop(context);
                                  // Navigator.pushAndRemoveUntil(
                                  //   context,
                                  //   // MaterialPageRoute(
                                  //   //   builder: (context) =>
                                  //   //       // const SignCheckPage(),
                                  //   // ),
                                  //   // (route) => false,
                                  // );
                                },
                                error: (message) {
                                  Navigator.pop(context);
                                  if (kDebugMode) print(message);
                                },
                              );
                            },
                            child: CommonMenuItem(
                              leading: Icon(
                                Icons.logout_outlined,
                                size: 24.sp,
                                color: ColorResource.red,
                              ),
                              label: LocaleKeys.profile_logout.tr(),
                              labelColor: ColorResource.red,
                              dividerColor: ColorResource.red,
                              trailing: Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 24.sp,
                                color: ColorResource.red,
                              ),
                              onTap: () {
                                context
                                    .read<LogoutBloc>()
                                    .add(const LogoutEvent.logout());
                              },
                            ),
                          ),
                          const SizedBox(height: 40),
                          // const SocialMediaWidget(),
                          const SizedBox(height: 64),
                        ],
                      ),
                    ),
                  ]
                )
              )
                );
                
                
              
            
          
        }
      
    
  

  // Widget _buildVerificationSection() {
  //   return BlocBuilder<ProfileUserValidationBloc, ProfileUserValidationState>(
  //     builder: (context, state) {
  //       return state.when(
  //         initial: () {
  //           return const SizedBox();
  //         },
  //         loading: () {
  //           return const SizedBox();
  //         },
  //         success: (data) {
  //           if (verifyUserValidation(data.data?.data) !=
  //               UserValidationType.active) {
  //             return Column(
  //               children: [
  //                 Stack(
  //                   children: [
  //                     CommonShadowedContainer(
  //                       padding: const EdgeInsets.fromLTRB(16, 16, 120, 12),
  //                       backgroundColor: ColorResource.orange200,
  //                       radius: 10,
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                             verifyUserValidation(data.data?.data) ==
  //                                     UserValidationType.pending
  //                                 ? "Your data verification is currently in progress. This process may take a few moments."
  //                                 : "You haven't completed data verification",
  //                             style: TextStyle(
  //                               fontSize: 12.sp,
  //                               fontWeight: FontWeightResource.medium,
  //                               color: ColorResource.black100.withOpacity(0.8),
  //                             ),
  //                           ),
  //                           if (verifyUserValidation(data.data?.data) !=
  //                               UserValidationType.pending) ...[
  //                             const SizedBox(height: 12),
  //                             Material(
  //                               type: MaterialType.button,
  //                               color: Colors.transparent,
  //                               borderRadius: BorderRadius.circular(6),
  //                               clipBehavior: Clip.hardEdge,
  //                               child: InkWell(
  //                                 onTap: () {
  //                                   // Navigator.push(
  //                                   //   context,
  //                                   //   MaterialPageRoute(
  //                                   //     builder: (context) {
  //                                   //       return const VerificationDataOptionPage(
  //                                   //         isShowBackIcon: true,
  //                                   //       );
  //                                   //     },
  //                                   //   ),
  //                                   // );
  //                                 },
  //                                 child: CommonOutlinedContainer(
  //                                   padding: const EdgeInsets.symmetric(
  //                                     vertical: 6,
  //                                     horizontal: 12,
  //                                   ),
  //                                   radius: 8,
  //                                   borderColor: ColorResource.red700,
  //                                   child: Text(
  //                                     "Let's Go Verification",
  //                                     style: TextStyle(
  //                                       fontSize: 10.sp,
  //                                       fontWeight: FontWeightResource.semiBold,
  //                                       color: ColorResource.red700,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                             )
  //                           ]
  //                         ],
  //                       ),
  //                     ),
  //                     Positioned(
  //                       bottom: 0,
  //                       right: 12,
  //                       child: Assets.images.imgVerification.image(scale: 2),
  //                     ),
  //                   ],
  //                 ),
  //                 const SizedBox(height: 40),
  //               ],
  //             );
  //           }
  //           return const SizedBox();
  //         },
  //         failed: (message) {
  //           return const SizedBox();
  //         },
  //       );
  //     },
  //   );
  // }

  Widget _buildProfileSection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorResource.blue900, ColorResource.blue700],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: CachedNetworkImage(
                    imageUrl: profileImage ?? "",
                    width: 88,
                    height: 88,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return Shimmer.fromColors(
                        baseColor: ColorResource.grey200,
                        highlightColor: ColorResource.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorResource.grey200,
                          ),
                        ),
                      );
                    },
                    errorWidget: (context, url, error) {
                      return Container(
                        color: ColorResource.red,
                        child: Center(
                          child: Text(
                            createInitial(fullName ?? username) ?? "-",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // BlocListener<ChangeProfilePictureBloc,
                //     ChangeProfilePictureState>(
                //   listener: (context, state) {
                //     state.when(
                //       initial: () {},
                //       loading: () {
                //         showDialog(
                //           barrierDismissible: false,
                //           context: context,
                //           builder: (context) => const LoadingDialog(),
                //         );
                //       },
                //       success: (data) {
                //         Navigator.pop(context);
                //         context
                //             .read<GetProfileBloc>()
                //             .add(const GetProfileEvent.getProfileData());
                //       },
                //       failed: (message) {
                //         Navigator.pop(context);
                //         showSnackBar(context, message);
                //       },
                //     );
                //   },
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Material(
                    color: ColorResource.white,
                    borderRadius: BorderRadius.circular(24),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {
                        // showModalBottomSheet(
                        //   shape: const RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(16),
                        //       topRight: Radius.circular(16),
                        //     ),
                        //   ),
                        //   context: context,
                        //   builder: (context) {
                        //     // return ProfileUploadOptionBottomSheet(
                        //     //   onImageSelected: (image) {
                        //     //     context
                        //     //         .read<ChangeProfilePictureBloc>()
                        //     //         .add(ChangeProfilePictureEvent.change(
                        //     //           image,
                        //     //         ));
                        //       },
                        //     );
                        //   },
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          Assets.icons.icEditSquare,
                          colorFilter: const ColorFilter.mode(
                            ColorResource.blue850,
                            BlendMode.srcIn,
                          ),
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // if (fullName != null && fullName!.isNotEmpty)
            Text(
              fullName ?? "",
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeightResource.semiBold,
                color: ColorResource.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: ColorResource.white,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      email ?? "",
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        color: ColorResource.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.phone_outlined,
                      color: ColorResource.white,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      phoneNumber ?? "",
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        color: ColorResource.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
