import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/choose_verification_option/views/verification_data_option_page.dart';
import 'package:bpay_mobile/src/navigation/cubit/navigation_cubit.dart';
import 'package:bpay_mobile/src/navigation_history/bloc/bloc/transaction_history_bloc.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_item_model.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_tab_enum.dart';
import 'package:bpay_mobile/src/navigation_history/views/history_detail_page.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/balance/balance_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/profile/profile_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/user_validation/user_validation_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/models/home_transaction_filter_enum.dart';
import 'package:bpay_mobile/src/navigation_home/models/tiled_menu_model.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_type_enum.dart';
import 'package:bpay_mobile/src/navigation_home/views/services_menu_bottom_sheet.dart';
import 'package:bpay_mobile/src/navigation_home/widgets/home_transaction_history_multi_item.dart';
import 'package:bpay_mobile/src/navigation_home/widgets/home_transaction_history_single_item.dart';
import 'package:bpay_mobile/src/ppob_bpjs/input/views/bpjs_input_page.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/package/views/e_wallet_package_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/inquiry/electricity_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/views/electricity_payment_package_page.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/views/phone_data_package_page.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/views/remittance_destination_page.dart';
import 'package:bpay_mobile/src/balance_top_up/nominal/views/balance_top_up_nominal_page.dart';
import 'package:bpay_mobile/src/ppob/views/top_up_bills_page.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/views/multi_transfer_destination_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_chip.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/src/navigation_home/widgets/tiled_menu_item_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.type});

  final TransactionHistoryTab? type;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isNominalHidden = false;
  // UserValidationData? verificationData;
  // UserValidationType? userValidationType;

  List<TiledMenuModel> servicesMenu(BuildContext context) {
    return [
      TiledMenuModel(
        label: "Phone Credit",
        svgAsset: Assets.icons.icPhoneCredit,
        background: ColorResource.red300.withOpacity(0.28),
        labelColor: ColorResource.blue850,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const PhoneDataPackagePage(tabIndex: 0);
              },
            ),
          );
        },
      ),
      TiledMenuModel(
        label: "Data Package",
        imageAsset: Assets.icons.icDataPackage.image(scale: 4),
        background: ColorResource.red300.withOpacity(0.28),
        labelColor: ColorResource.blue850,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const PhoneDataPackagePage(tabIndex: 1);
              },
            ),
          );
        },
      ),
      TiledMenuModel(
          label: "Reward",
          svgAsset: Assets.icons.icReward,
          background: ColorResource.yellow100,
          labelColor: ColorResource.blue850,
          onTap: () {
            showSnackBar(context, "Under Development");
          }),
      TiledMenuModel(
        label: "Top Up &\nBills",
        svgAsset: Assets.icons.icBills,
        background: ColorResource.red300.withOpacity(0.28),
        labelColor: ColorResource.blue850,
        onTap: () {
          handleUserValidation(
            context,
            onActive: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TopUpBillsPage();
                  },
                ),
              );
            },
          );
        },
      ),
      TiledMenuModel(
        label: "Electricity Token",
        imageAsset: Assets.icons.icElectricityToken.image(scale: 4),
        background: ColorResource.red300.withOpacity(0.28),
        labelColor: ColorResource.blue850,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Container();
                // return BlocProvider(
                //   create: (context) => ElectricityInquiryBloc(),
                //   child: const ElectricityPaymentPackagePage(
                //     tabIndex: 0,
                //   ),
                // );
              },
            ),
          );
        },
      ),
      TiledMenuModel(
        label: "BPJS Kesehatan",
        svgAsset: Assets.icons.icBpjsSvg,
        background: ColorResource.red300.withOpacity(0.28),
        labelColor: ColorResource.blue850,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const BpjsInputPage();
              },
            ),
          );
        },
      ),
      TiledMenuModel(
        label: "Voucher",
        svgAsset: Assets.icons.icVoucherNew,
        background: ColorResource.yellow100,
        labelColor: ColorResource.blue850,
        onTap: () {
          context.read<NavigationCubit>().changePage(2, isVoucher: true);
        },
      ),
      TiledMenuModel(
        label: LocaleKeys.homepage_more.tr(),
        svgAsset: Assets.icons.icMore,
        background: ColorResource.white,
        labelColor: ColorResource.black100,
        onTap: () {
          handleUserValidation(
            context,
            onActive: () {
              showModalBottomSheet(
                enableDrag: true,
                showDragHandle: true,
                constraints: BoxConstraints.expand(height: 85.h),
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const ServicesMenuBottomSheet();
                },
              );
            },
          );
        },
      ),
    ];
  }

  // HomeTransactionFilter selectedFilter = HomeTransactionFilter.all;
  // Map<String, List<TransactionHistoryItemModel>> filteredList = {};
  // List<TransactionHistoryItemModel> transactionData = [];
  // String balanceNominal = "-";
  // String pointNominal = "-";
  // String? profileImage;
  // String? phoneNumber;
  // String? profileImageFile;
  // String? verificationSubject;
  // bool isShowVerification = true;

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<BalanceBloc>().add(const BalanceEvent.getBalance());
  //   context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  //   context
  //       .read<UserValidationBloc>()
  //       .add(const UserValidationEvent.getUserValidationStatus());
  //   context
  //       .read<TransactionHistoryBloc>()
  //       .add(const TransactionHistoryEvent.getTransactionHistory(null, 3));
  // }

  TransactionHistoryItemModel?
      mapHistoryTransferSingleItemtoTransactionHistoryItemModel(
          HistoryTransferSingleItem item) {
    if (item.createdAt == null || item.createdAt! < 0) {
      return null;
    }

    Widget getTransactionIcon(String? transactionTitle) {
      if (transactionTitle == "Transfer Beyond") {
        return Assets.icons.icBalanceTransfer.image(scale: 1);
      } else if (transactionTitle == "Topup Balance") {
        return Assets.icons.icBalanceTopup.image(scale: 1);
      } else if (transactionTitle == "Transfer To Bank") {
        return Assets.icons.icBankTransfer2.image(scale: 1);
      } else {
        return SvgPicture.asset(Assets.icons.icEWallet);
      }
    }

    return TransactionHistoryItemModel(
      label: item.transactionTitle ?? "",
      correspondent: item.paymentChannel?.method ?? "",
      date: DateTime.fromMillisecondsSinceEpoch(item.createdAt! * 1000),
      icon: getTransactionIcon(item.transactionTitle),
      nominal: item.formatted?.totalAmount ?? "",
      boundaryType: item.boundaryType,
      transactionId: item.transactionId,
      notes: item.recepients?.map((r) => r.note).toList() ?? [],
      paymentMethod: item.paymentChannel?.method ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorResource.blue850,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    child: Stack(children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(Assets.images.imgShapeHome1),
          ),
          Positioned(
            top: 140,
            right: 0,
            child: SvgPicture.asset(Assets.images.imgShapeHome2),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
              child: Column(
                children: [
                  buildBalanceAndProfileSection(),
                  const SizedBox(height: 32),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.65,
                      crossAxisSpacing: 32,
                    ),
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      List<TiledMenuModel> menu = [
                        TiledMenuModel(
                          label: "E-Wallet",
                          svgAsset: Assets.icons.icEWallet,
                          labelColor: ColorResource.white,
                          onTap: () {
                            // handleUserValidation(
                            //   context,
                            //   onActive: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const EWalletPackagePage();
                                },
                              ),
                            );

                            // userValidationType: userValidationType,
                          },
                        ),
                        TiledMenuModel(
                          label: "Multi Transfer",
                          svgAsset: Assets.icons.icMultifinance,
                          labelColor: ColorResource.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MultiTransferDestinationPage();
                                },
                              ),
                            );
                          },
                        ),
                        TiledMenuModel(
                          label: "Remittance",
                          imageAsset:
                              Assets.icons.icRemittancePng.image(scale: 2),
                          labelColor: ColorResource.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const RemittanceDestinationPage();
                                },
                              ),
                            );
                          },
                        ),
                        TiledMenuModel(
                          label: "Top Up",
                          svgAsset: Assets.icons.icTopUp,
                          labelColor: ColorResource.white,
                          onTap: () {
                            // handleUserValidation(
                            //   context,
                            //   onActive: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const BalanceTopUpNominalPage();
                                },
                              ),
                            );
                            //   },

                            // );
                          },
                        ),
                      ];
                      return TiledMenuItemWidget(menuItem: menu[index]);
                    },
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 48),
                decoration: BoxDecoration(
                  color: ColorResource.blue050,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorResource.blue850.withOpacity(0.12),
                      blurRadius: 18,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // BlocBuilder<UserValidationBloc, UserValidationState>(
                    //   builder: (context, state) {
                    //     return state.when(
                    //       initial: () {
                    //         return const SizedBox();
                    //       },
                    //       loading: () {
                    //         return const SizedBox();
                    //       },
                    //       success: (data) {
                    //         userValidationType =
                    //             verifyUserValidation(data.data?.data);
                    //         if (userValidationType !=
                    //             UserValidationType.active) {
                    Column(
                      children: [
                        Stack(
                          children: [
                            CommonShadowedContainer(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 16, 120, 12),
                              backgroundColor: ColorResource.orange200,
                              radius: 10,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // userValidationType ==
                                      //         UserValidationType
                                      //             .pending
                                      //     ? "Your data verification is currently in progress. This process may take a few moments."
                                      //     : "You haven't completed data verification",\
                                      "tEST",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.medium,
                                        color: ColorResource.black100
                                            .withOpacity(0.8),
                                      ),
                                    ),
                                    // if (userValidationType !=
                                    //     UserValidationType
                                    //         .pending) ...[
                                    // const SizedBox(height: 12),
                                    Material(
                                      type: MaterialType.button,
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(6),
                                      clipBehavior: Clip.hardEdge,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const VerificationDataOptionPage(
                                                  isShowBackIcon:
                                                      true,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        child: CommonOutlinedContainer(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 6,
                                            horizontal: 12,
                                          ),
                                          radius: 8,
                                          borderColor: ColorResource.red700,
                                          child: Text(
                                            "Let's Go Verification",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight:
                                                  FontWeightResource.semiBold,
                                              color: ColorResource.red700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]
                                  // ],
                                  ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 12,
                              child:
                                  Assets.images.imgVerification.image(scale: 2),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 40),
                      ],
                    )
                  ],
                )),
            Text(
              LocaleKeys.homepage_enjoy_our_services.tr(),
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
              decoration: BoxDecoration(
                color: ColorResource.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 40,
                ),
                itemCount: servicesMenu(context).length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return TiledMenuItemWidget(
                    menuItem: servicesMenu(context)[index],
                    fontSize: 9.sp,
                    fontWeight: FontWeightResource.semiBold,
                    textMaxWidth: 22.w,
                  );
                },
              ),
            )
          ])
        ])))));

//                   // const SizedBox(height: 40),
//                   // TODO: temporal hide for unused feature
//                   // Row(
//                   //   children: [
//                   //     Expanded(
//                   //       child: Text(
//                   //         LocaleKeys.homepage_recommendations_for_you
//                   //             .tr(),
//                   //         style: TextStyle(
//                   //           fontSize: 12.sp,
//                   //           fontWeight: FontWeightResource.semiBold,
//                   //         ),
//                   //       ),
//                   //     ),
//                   //     InkWell(
//                   //       onTap: () {
//                   //         showSnackBar(
//                   //           context,
//                   //           "Debug message: view all clicked!",
//                   //         );
//                   //       },
//                   //       child: Row(
//                   //         mainAxisSize: MainAxisSize.min,
//                   //         children: [
//                   //           Text(
//                   //             LocaleKeys.homepage_view_all.tr(),
//                   //             style: GoogleFonts.poppins(
//                   //               color: ColorResource.blue550,
//                   //               fontWeight: FontWeightResource.medium,
//                   //               fontSize: 10.sp,
//                   //             ),
//                   //           ),
//                   //           const SizedBox(width: 4),
//                   //           const Icon(
//                   //             Icons.keyboard_arrow_right_outlined,
//                   //             color: ColorResource.blue550,
//                   //           )
//                   //         ],
//                   //       ),
//                   //     ),
//                   //   ],
//                   // ),
//                   // const SizedBox(height: 20),
//                   // Assets.images.imgRecommendationBanner.image(),
//                   // const SizedBox(height: 40),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           LocaleKeys.homepage_recent_transaction.tr(),
//                           style: TextStyle(
//                             fontSize: 12.sp,
//                             fontWeight: FontWeightResource.semiBold,
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           context.read<NavigationCubit>().changePage(1);
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               LocaleKeys.homepage_view_all.tr(),
//                               style: GoogleFonts.poppins(
//                                 color: ColorResource.blue550,
//                                 fontWeight: FontWeightResource.medium,
//                                 fontSize: 10.sp,
//                               ),
//                             ),
//                             // const SizedBox(width: 4),
//                             const Icon(
//                               Icons.keyboard_arrow_right_outlined,
//                               color: ColorResource.blue550,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   // const SizedBox(height: 12),
//                   Row(
//                     children: [
//                       AppChip(
//                         label: 'test2',
//                         selected: true,
//                         onTap: () {
//                           // setState(() {
//                           //   selectedFilter = HomeTransactionFilter.all;
//                           //   context.read<TransactionHistoryBloc>().add(
//                           //         const TransactionHistoryEvent
//                           //             .getTransactionHistory(
//                           //           null,
//                           //           3,
//                           //         ),
//                           //       );
//                           // });
//                         },
//                       ),
//                       // const SizedBox(width: 10),
//                       // AppChip(
//                       //   label: HomeTransactionFilter.income.label,
//                       //   leadingIcon: Container(
//                       //     decoration: const BoxDecoration(
//                       //       shape: BoxShape.circle,
//                       //       color: ColorResource.green450,
//                       //     ),
//                       //   ),
//                       //   selected: selectedFilter ==
//                       //       HomeTransactionFilter.income,
//                       //   onTap: () {
//                       //     setState(() {
//                       //       selectedFilter = HomeTransactionFilter.income;
//                       //       context.read<TransactionHistoryBloc>().add(
//                       //             const TransactionHistoryEvent
//                       //                 .getTransactionHistory(
//                       //               HistoryBoundaryType.inbound,
//                       //               3,
//                       //             ),
//                       //           );
//                       //     });
//                       //   },
//                       // ),
//                       // const SizedBox(width: 10),
//                       // AppChip(
//                       //   label: HomeTransactionFilter.outcome.label,
//                       //   leadingIcon: Container(
//                       //     decoration: const BoxDecoration(
//                       //       shape: BoxShape.circle,
//                       //       color: ColorResource.red,
//                       //     ),
//                       //   ),
//                       //   selected: selectedFilter ==
//                       //       HomeTransactionFilter.outcome,
//                       //   onTap: () {
//                       //     setState(() {
//                       //       selectedFilter =
//                       //           HomeTransactionFilter.outcome;
//                       //       context.read<TransactionHistoryBloc>().add(
//                       //             const TransactionHistoryEvent
//                       //                 .getTransactionHistory(
//                       //               HistoryBoundaryType.outbound,
//                       //               3,
//                       //             ),
//                       //           );
//                       //     });
//                       //   },
//                       // ),
//                     ],
//                   ),
//                   // const SizedBox(height: 28),
//                   // BlocBuilder<TransactionHistoryBloc,
//                   //     TransactionHistoryState>(
//                   //   builder: (context, state) {
//                   //     return state.when(
//                   //       initial: () => const CircularProgressIndicator(),
//                   //       loading: () => const SizedBox(
//                   //         height: 300,
//                   //         child: Center(
//                   //           child: CircularProgressIndicator(),
//                   //         ),
//                   //       ),
//                   //       success: (data) {
//                   //         List<TransactionHistoryItemModel>
//                   //             transactionData = data.data!
//                   //                 .map(
//                   //                   (item) =>
//                   //                       mapHistoryTransferSingleItemtoTransactionHistoryItemModel(
//                   //                           item),
//                   //                 )
//                   //                 .where((item) => item != null)
//                   //                 .cast<TransactionHistoryItemModel>()
//                   //                 .take(3)
//                   //                 .toList();

//                   //         filteredList.clear();
//                   //         filteredList.addAll(
//                   //           transactionData
//                   //               .take(3)
//                   //               .toList()
//                   //               .groupByDate(),
//                   //         );

//                   //  ListView(
//                   //   shrinkWrap: true,
//                   //   physics: const NeverScrollableScrollPhysics(),
//                   //   children: filteredList.entries.map((date) {
//                   //     final List<TransactionHistoryItemModel>
//                   //         transactionItems = date.value;

//                   Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           // DateTime.now()
//                           //             .difference(DateFormat(
//                           //                     "yyyy-MM-dd")
//                           //                 .parse(date.key))
//                           //             .inDays ==
//                           //         0
//                           //     ? "Today"
//                           //     : DateTime.now()
//                           //                 .difference(DateFormat(
//                           //                         "yyyy-MM-dd")
//                           //                     .parse(date.key))
//                           //                 .inDays ==
//                           //             1
//                           //         ? "Yesterday"
//                           //         : DateFormat("dd MMMM yyyy")
//                           //             .format(DateFormat(
//                           //                     "yyyy-MM-dd")
//                           //                 .parse(date.key)),
//                           "test2",
//                           style: TextStyle(
//                             fontSize: 12.sp,
//                             color: ColorResource.black100.withOpacity(0.4),
//                           ),
//                         ),
//                         // const SizedBox(height: 16),
//                         // if (transactionItems.length > 1) ...[
//                         Container(
//                             decoration: BoxDecoration(
//                               color: ColorResource.white,
//                               borderRadius: BorderRadius.circular(6),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color:
//                                       ColorResource.blue850.withOpacity(0.16),
//                                   blurRadius: 16,
//                                   offset: const Offset(0, 2),
//                                 ),
//                               ],
//                             ),
//                             // child: Column(
//                             //   children: transactionItems
//                             //       .mapIndexed(
//                             //           (index, transactionItem) {
//                             //     return InkWell(
//                             //       onTap: () {
//                             //         Navigator.push(
//                             //           context,
//                             //           MaterialPageRoute(
//                             //             builder: (context) {
//                             //               return HistoryDetailPage(
//                             //                 transactionId: transactionItem
//                             //                             .transactionId
//                             //                             ?.isNotEmpty ==
//                             //                         true
//                             //                     ? transactionItem
//                             //                         .transactionId!
//                             //                     : "Unknown Transaction",
//                             //                 boundaryType:
//                             //                     transactionItem
//                             //                             .boundaryType ??
//                             //                         "",
//                             //                 createdAt:
//                             //                     transactionItem
//                             //                             .date
//                             //                             .millisecondsSinceEpoch ~/
//                             //                         1000,
//                             //                 paymentMethodName:
//                             //                     transactionItem
//                             //                         .paymentMethod,
//                             //               );
//                             //             },
//                             //           ),
//                             //         );
//                             //       },
//                             child: Column(children: [
//                               // HomeTransactionHistoryMultiItem(
//                               //     item:
//                               //         transactionItem),
//                               // Visibility(
//                               //   visible: index <
//                               //       transactionItems
//                               //               .length -
//                               //           1,
//                               //   child: Divider(
//                               //     height: 1,
//                               //     indent: 40,
//                               //     endIndent: 40,
//                               //     color: ColorResource
//                               //         .black100
//                               //         .withOpacity(
//                               //             0.16),
//                               //   ),
//                               // ),
//                               //             ],
//                               //           ),
//                               //         );
//                               //       }).toList(),
//                               //     ),
//                               //   ),
//                               // ] else ...[
//                               InkWell(
//                                 onTap: () {
//                                   //   final transactionItem =
//                                   //       transactionItems.first;
//                                   //   Navigator.push(
//                                   //     context,
//                                   //     MaterialPageRoute(
//                                   //       builder: (context) {
//                                   //         return HistoryDetailPage(
//                                   //           transactionId: transactionItem
//                                   //                       .transactionId
//                                   //                       ?.isNotEmpty ==
//                                   //                   true
//                                   //               ? transactionItem
//                                   //                   .transactionId!
//                                   //               : "Unknown Transaction",
//                                   //           boundaryType:
//                                   //               transactionItem
//                                   //                       .boundaryType ??
//                                   //                   "",
//                                   //           createdAt: transactionItem
//                                   //                   .date
//                                   //                   .millisecondsSinceEpoch ~/
//                                   //               1000,
//                                   //           paymentMethodName:
//                                   //               transactionItem
//                                   //                   .paymentMethod,
//                                   //         );
//                                   //       },
//                                   //     ),
//                                   //   );
//                                   // },
//                                 },
//                                 // child:
//                                 //       HomeTransactionHistorySingleItem(
//                                 //           item:
//                                 //               transactionItems.first),
//                                 //   // ),
//                                 // ],
//                                 // const SizedBox(height: 24),
//                               )
//                             ]))
//                       ])
//                 ])
//               ]),
//             ),
//           ),
//         ));
//   }
// }

//                 // success: (data) {
//                 //   phoneNumber = data.getProfileData?.data?.phoneNumber;
//                 //   profileImageFile = data.getProfileData?.data?.imageUrl;
//                 //   String? fullName = data.getProfileData?.data?.name;
//                 //   String? username = data.getProfileData?.data?.username;

//                   // Setelah data didapatkan, kembalikan widget yang akan ditampilkan di UI
// //                    Row(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Expanded(
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.end,
// //                           children: [
// //                             if (fullName != null) ...[
// //                               Text(
// //                                 "Hello,",
// //                                 style: TextStyle(
// //                                   fontSize: 10.sp,
// //                                   color: ColorResource.white,
// //                                 ),
// //                               ),
// //                               Text(
// //                                 fullName.split(" ").length > 1
// //                                     ? "${fullName.split(" ").first} ${fullName.split(" ")[1]}"
// //                                     : fullName,
// //                                 style: TextStyle(
// //                                   fontSize: 13.sp,
// //                                   fontWeight: FontWeightResource.semiBold,
// //                                   color: ColorResource.white,
// //                                 ),
// //                                 textAlign: TextAlign.right,
// //                               ),
// //                             ] else ...[
// //                               SizedBox(
// //                                 height: 42,
// //                                 child: Align(
// //                                   alignment: Alignment.centerRight,
// //                                   child: Text(
// //                                     "Hello!",
// //                                     style: TextStyle(
// //                                       fontSize: 14.sp,
// //                                       fontWeight: FontWeightResource.semiBold,
// //                                       color: ColorResource.white,
// //                                     ),
// //                                   ),
// //                                 ),
// //                               )
// //                             ],
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(width: 10),
// //                       Stack(
// //                         children: [
// //                           SizedBox(
// //                             width: 42,
// //                             height: 42,
// //                             child: OverflowBox(
// //                               maxWidth: 300,
// //                               maxHeight: 300,
// //                               child: Container(
// //                                 padding: const EdgeInsets.all(10),
// //                                 decoration: BoxDecoration(
// //                                   shape: BoxShape.circle,
// //                                   border: Border.all(
// //                                     color:
// //                                         ColorResource.white.withOpacity(0.12),
// //                                   ),
// //                                 ),
// //                                 child: Container(
// //                                   padding: const EdgeInsets.all(10),
// //                                   decoration: BoxDecoration(
// //                                     shape: BoxShape.circle,
// //                                     border: Border.all(
// //                                       color:
// //                                           ColorResource.white.withOpacity(0.12),
// //                                     ),
// //                                   ),
// //                                   child: Container(
// //                                     padding: const EdgeInsets.all(10),
// //                                     decoration: BoxDecoration(
// //                                       shape: BoxShape.circle,
// //                                       border: Border.all(
// //                                         color: ColorResource.white
// //                                             .withOpacity(0.12),
// //                                       ),
// //                                     ),
// //                                     child: Container(
// //                                       width: 64,
// //                                       height: 64,
// //                                       decoration: BoxDecoration(
// //                                         shape: BoxShape.circle,
// //                                         border: Border.all(
// //                                           color: ColorResource.white
// //                                               .withOpacity(0.12),
// //                                         ),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                           ClipRRect(
// //                             borderRadius: BorderRadius.circular(21),
// //                             child: CachedNetworkImage(
// //                               imageUrl: profileImageFile!,
// //                               width: 42,
// //                               height: 42,
// //                               fit: BoxFit.cover,
// //                               placeholder: (context, url) {
// //                                 return Shimmer.fromColors(
// //                                   baseColor: ColorResource.grey200,
// //                                   highlightColor: ColorResource.white,
// //                                   child: Container(
// //                                     decoration: const BoxDecoration(
// //                                       shape: BoxShape.circle,
// //                                       color: ColorResource.grey200,
// //                                     ),
// //                                   ),
// //                                 );
// //                               },
// //                               errorWidget: (context, url, error) {
// //                                 return Container(
// //                                   color: ColorResource.red,
// //                                   child: Center(
// //                                     child: Text(
// //                                       createInitial(fullName ?? username) ??
// //                                           "-",
// //                                       style: TextStyle(
// //                                         fontSize: 12.sp,
// //                                         fontWeight: FontWeightResource.semiBold,
// //                                         color: ColorResource.white,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 );
// //                               },
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   );
// //                 },
// //                 failed: (message) {
// //                   return Center(child: Text('Failed: $message'));
// //                 },
// //               );
// //             },
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }
  }

  Widget buildBalanceAndProfileSection() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // BlocListener<BalanceBloc, BalanceState>(
          //   listener: (context, state) {
          //     state.when(
          //       initial: () {},
          //       loading: () {},
          //       success: (data) {
          //         setState(
          //           () {
          //             balanceNominal = convertToIdr(
          //               (int.tryParse(data.data?.data?.balance ?? "") ?? 0),
          //               0,
          //             );
          //             pointNominal = data.data?.data?.point ?? "0";
          //           },
          //         );
          //       },
          //       failed: (message) {
          //         if (kDebugMode) {
          //           print(message);
          //         }
          //       },
          //     );
          //   },
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: TextStyle(
                  fontSize: 11.sp,
                  color: ColorResource.white,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Rp 0",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Visibility(
                  //   visible: balanceNominal != "-",
                  //   child: InkWell(
                  //     onTap: () {
                  //       setState(() {
                  //         isNominalHidden = !isNominalHidden;
                  //       });
                  //     },
                  //     child: Icon(
                  //       isNominalHidden
                  //           ? Icons.visibility_outlined
                  //           : Icons.visibility_off_outlined,
                  //       color: ColorResource.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Points",
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: ColorResource.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset(
                    Assets.icons.icCoin,
                    width: 15,
                    height: 15,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "test",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.white,
                    ),
                  )
                ],
              ),
            ],
          ),

          const SizedBox(width: 16),
          Expanded(
              // child: BlocBuilder<ProfileBloc, ProfileState>(
              //   builder: (context, state) {
              //     return state.when(
              //       initial: () {
              //         return Container();
              //       },
              //       loading: () {
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 54,
                        height: 14,
                        color: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 100,
                        height: 18,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ))
        ]);
  }
}
