import 'package:bpay_mobile/src/navigation_home/models/tiled_menu_model.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/ppob_bpjs/input/views/bpjs_input_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/inquiry/electricity_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/views/electricity_payment_package_page.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/menu/views/internet_tv_menu_page.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/views/phone_data_package_page.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/menu/phone_postpaid_menu_page.dart';
import 'package:bpay_mobile/src/ppob_water_bills/menu/views/water_bills_menu_page.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/views/remittance_destination_page.dart';
import 'package:bpay_mobile/src/balance_top_up/nominal/views/balance_top_up_nominal_page.dart';
import 'package:bpay_mobile/src/transfer_balance/destination/views/balance_destination_page.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/views/multi_transfer_destination_page.dart';
import 'package:bpay_mobile/src/transfer_single/destination/views/single_destination_page.dart';
import 'package:bpay_mobile/src/navigation_home/widgets/tiled_menu_item_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ServicesMenuBottomSheet extends StatelessWidget {
  const ServicesMenuBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All Menu",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Money Transfer",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.medium,
                    color: ColorResource.black100.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 42,
                    mainAxisSpacing: 42,
                  ),
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    List<TiledMenuModel> menu = [
                      TiledMenuModel(
                        label: "Transfer Bank\nAccount",
                        imageAsset: Assets.icons.icBankTransfer2.image(
                          scale: 4,
                        ),
                        background: ColorResource.blue550.withOpacity(0.20),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SingleDestinationPage();
                              },
                            ),
                          );
                        },
                      ),
                      TiledMenuModel(
                        label: "Remittance",
                        imageAsset:
                            Assets.icons.icRemittancePng.image(scale: 2),
                        background: ColorResource.blue550.withOpacity(0.20),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Balance On\nBeyond",
                        svgAsset: Assets.icons.icBalanceOnBeyond,
                        background: ColorResource.blue550.withOpacity(0.20),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BalanceDestinationPage();
                              },
                            ),
                          );
                        },
                      ),
                      TiledMenuModel(
                        label: "Multi Transfer",
                        svgAsset: Assets.icons.icMultifinance,
                        background: ColorResource.blue550.withOpacity(0.20),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Top Up\nBalance",
                        svgAsset: Assets.icons.icTopUp,
                        background: ColorResource.blue550.withOpacity(0.20),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BalanceTopUpNominalPage();
                              },
                            ),
                          );
                        },
                      ),
                    ];
                    return TiledMenuItemWidget(
                      menuItem: menu[index],
                      fontWeight: FontWeightResource.semiBold,
                      fontSize: 9.sp,
                      textMaxWidth: 23.w,
                    );
                  },
                ),
                const SizedBox(height: 30),
                Divider(
                  height: 1,
                  color: ColorResource.black100.withOpacity(0.12),
                ),
                const SizedBox(height: 30),
                Text(
                  "Top Up & Bills",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.medium,
                    color: ColorResource.black100.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 42,
                    mainAxisSpacing: 42,
                  ),
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    List<TiledMenuModel> menu = [
                      TiledMenuModel(
                        label: "Phone Credit",
                        svgAsset: Assets.icons.icPhoneCredit,
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Data\nPackage",
                        imageAsset: Assets.icons.icDataPackage.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Electricity\nToken",
                        imageAsset:
                            Assets.icons.icElectricityToken.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Electricity\nBills",
                        imageAsset:
                            Assets.icons.icElectricityBills.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                                // return BlocProvider(
                                //   create: (context) => ElectricityInquiryBloc(),
                                //   child: const ElectricityPaymentPackagePage(
                                //     tabIndex: 1,
                                //   ),
                                // );
                              },
                            ),
                          );
                        },
                      ),
                      TiledMenuModel(
                        label: "BPJS\nKesehatan",
                        svgAsset: Assets.icons.icBpjsSvg,
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
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
                        label: "Water Bills",
                        imageAsset: Assets.icons.icWaterBills.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WaterBillsMenuPage();
                              },
                            ),
                          );
                        },
                      ),
                      TiledMenuModel(
                        label: "Postpaid\nPhone Bills",
                        imageAsset:
                            Assets.icons.icPostpaidPhoneBills.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PhonePostpaidMenuPage();
                              },
                            ),
                          );
                        },
                      ),
                      TiledMenuModel(
                        label: "Internet &\nTV",
                        imageAsset:
                            Assets.icons.icInternetAndTv.image(scale: 4),
                        background: ColorResource.red300.withOpacity(0.28),
                        labelColor: ColorResource.black100,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const InternetTvMenuPage();
                              },
                            ),
                          );
                        },
                      ),
                    ];
                    return TiledMenuItemWidget(
                      menuItem: menu[index],
                      fontWeight: FontWeightResource.semiBold,
                      fontSize: 9.sp,
                      textMaxWidth: 22.w,
                    );
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }
}
