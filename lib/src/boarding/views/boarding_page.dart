import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/boarding/cubit/boarding/boarding_cubit.dart';
import 'package:bpay_mobile/src/boarding/models/boarding_page_model.dart';
import 'package:bpay_mobile/src/boarding/models/language_enum.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_register_check/views/sign_check_page.dart';
import 'package:bpay_mobile/src/boarding/models/locale_enum.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  int activePage = 0;
  PageController boardingController = PageController();
  Language? language;
  List<BoardingPageModel> pages = [
    BoardingPageModel(
      title: LocaleKeys.boarding_page1_title,
      description: LocaleKeys.boarding_page1_desc,
      image: Assets.images.imgBoarding1.image(scale: 2),
    ),
    BoardingPageModel(
      title: "Digital Remittance",
      description: LocaleKeys.boarding_page2_desc,
      image: Assets.images.imgBoarding2.image(scale: 2),
    ),
    BoardingPageModel(
      title: LocaleKeys.boarding_page3_title,
      description: LocaleKeys.boarding_page3_desc,
      image: Assets.images.imgBoarding3.image(scale: 2),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BoardingCubit, BoardingState>(
          listener: (context, state) {
            state.whenOrNull(
              boarded: () {
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SignCheckPage(),
                //   ),
                //   (route) => false,
                // );
              },
            );
          },
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 550,
                  child: PageView.builder(
                    controller: boardingController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 370,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(80),
                              ),
                              color: ColorResource.blue850,
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    Assets.images.imgShapeBoarding1,
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    Assets.images.imgShapeBoarding2,
                                  ),
                                ),
                                Positioned(
                                  top: 12,
                                  right: 20,
                                  child: SafeArea(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 12,
                                        ),
                                        elevation: 0,
                                        backgroundColor: ColorResource.white
                                            .withOpacity(0.25),
                                        surfaceTintColor: ColorResource.grey300,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        splashFactory: NoSplash.splashFactory,
                                        shadowColor: Colors.transparent,
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              insetPadding:
                                                  const EdgeInsets.all(100),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              surfaceTintColor:
                                                  Colors.transparent,
                                              backgroundColor:
                                                  ColorResource.white,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  12,
                                                ),
                                                child: ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          context.setLocale(
                                                            Locale(
                                                              LocaleEnum
                                                                  .values[index]
                                                                  .name,
                                                            ),
                                                          );
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Row(
                                                        children: [
                                                          CountryFlag
                                                              .fromLanguageCode(
                                                            LocaleEnum
                                                                .values[index]
                                                                .name,
                                                            height: 32,
                                                            width: 32,
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Text(
                                                            LocaleEnum
                                                                .values[index]
                                                                .label,
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
                                                                  .values[index]
                                                                  .name,
                                                              groupValue: context
                                                                  .locale
                                                                  .languageCode,
                                                              onChanged:
                                                                  (lang) {
                                                                setState(() {
                                                                  context.setLocale(
                                                                      Locale(lang ??
                                                                          LocaleEnum
                                                                              .en
                                                                              .name));
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              })
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return const Divider(
                                                      color:
                                                          ColorResource.grey300,
                                                    );
                                                  },
                                                  itemCount:
                                                      LocaleEnum.values.length,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CountryFlag.fromLanguageCode(
                                            context.locale.languageCode,
                                            shape: const Circle(),
                                            height: 16,
                                            width: 16,
                                          ),
                                          const SizedBox(width: 6),
                                          const Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 16,
                                            color: ColorResource.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(child: pages[index].image),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  pages[index].title.tr(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  pages[index].description.tr(),
                                  style: TextStyle(fontSize: 13.sp),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(
                    3,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: activePage == index ? 32 : 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: activePage == index
                              ? ColorResource.primary
                              : const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 33.w,
                      child: AppFilledButton(
                          onPressed: () {
                            if (activePage < 2) {
                              boardingController.animateToPage(
                                activePage + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Easing.standard,
                              );
                            } else {
                              context.read<BoardingCubit>().setBoarding(true);
                            }
                          },
                          text: activePage < 2
                              ? LocaleKeys.boarding_next.tr()
                              : LocaleKeys.boarding_continue.tr()),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 42,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            context.read<BoardingCubit>().setBoarding(true);
                          },
                          child: Text(
                            activePage < pages.length - 1
                                ? LocaleKeys.boarding_skip.tr()
                                : "",
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: ColorResource.black100.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
