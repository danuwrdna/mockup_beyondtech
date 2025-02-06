import 'package:bpay_mobile/src/navigation_home/models/tiled_menu_model.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/ppob_bpjs/input/views/bpjs_input_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/inquiry/electricity_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/views/electricity_payment_package_page.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/menu/views/internet_tv_menu_page.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/views/phone_data_package_page.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/menu/phone_postpaid_menu_page.dart';
import 'package:bpay_mobile/src/ppob_water_bills/menu/views/water_bills_menu_page.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class TopUpBillsPage extends StatelessWidget {
  const TopUpBillsPage({super.key});

  List<TiledMenuModel> prepaidMenu(BuildContext context) {
    return [
      TiledMenuModel(
        label: "Phone Credit",
        imageAsset: Assets.images.icBillsPhoneCredit.image(scale: 2),
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
        imageAsset: Assets.images.icBillsPhoneData.image(scale: 2),
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
        label: "Electricity Token",
        imageAsset: Assets.images.icPln.image(scale: 2),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Column();
              // return BlocProvider(
              //   create: (context) => ElectricityInquiryBloc(),
              //   child: const ElectricityPaymentPackagePage(
              //     tabIndex: 0,
              //   ),
              // );
            },
          ),
        ),
      ),
    ];
  }

  List<TiledMenuModel> postpaidMenu(BuildContext context) {
    return [
      TiledMenuModel(
        label: "Electricity Bills",
        imageAsset: Assets.images.icPln.image(scale: 2),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Column();
              // return BlocProvider(
              //   create: (context) => ElectricityInquiryBloc(),
              //   child: const ElectricityPaymentPackagePage(
              //     tabIndex: 1,
              //   ),
              // );
            },
          ),
        ),
      ),
      TiledMenuModel(
        label: "Water Bills",
        imageAsset: Assets.images.icBillsWater.image(scale: 2),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WaterBillsMenuPage(),
            ),
          );
        },
      ),
      TiledMenuModel(
        label: "BPJS",
        imageAsset: Assets.images.icBpjsColor.image(scale: 2),
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
        label: "Internet & TV",
        imageAsset: Assets.images.icBillsTvInternet.image(scale: 2),
        onTap: () {
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
      TiledMenuModel(
        label: "Phone Postpaid",
        imageAsset: Assets.images.icBillsPhoneHome.image(scale: 2),
        onTap: () {
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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Top Up & Bills",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResource.white,
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 12, 0, 12),
              decoration: BoxDecoration(
                color: ColorResource.blue300,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      const TextSpan(children: [
                        TextSpan(text: "Top Up dan Bayar Tagihan di "),
                        TextSpan(
                          text: "BeyondTech",
                          style: TextStyle(
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                        TextSpan(text: " Jadi Lebih Gampang dan Hemat")
                      ]),
                      style: TextStyle(fontSize: 11.sp),
                    ),
                  ),
                  Assets.images.imgTopUpBills.image(scale: 2),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Prepaid",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: prepaidMenu(context).length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: prepaidMenu(context)[index].onTap,
                  child: CommonOutlinedContainer(
                    padding: const EdgeInsets.all(9),
                    borderColor: ColorResource.black100.withOpacity(0.4),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          prepaidMenu(context)[index].imageAsset ??
                              Assets.images.imgTopUpBills.image(scale: 2),
                          const SizedBox(height: 12),
                          Text(
                            prepaidMenu(context)[index].label,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 28),
            Text(
              "Postpaid",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: postpaidMenu(context).length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: postpaidMenu(context)[index].onTap,
                  child: CommonOutlinedContainer(
                    padding: const EdgeInsets.all(9),
                    borderColor: ColorResource.black100.withOpacity(0.4),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          postpaidMenu(context)[index].imageAsset ??
                              Assets.images.imgTopUpBills.image(scale: 2),
                          const SizedBox(height: 12),
                          Text(
                            postpaidMenu(context)[index].label,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
