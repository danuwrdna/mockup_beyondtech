import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_water_bills/menu/bloc/water_bills_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/menu/widget/water_bills_menu_item_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class WaterBillsMenuPage extends StatefulWidget {
  const WaterBillsMenuPage({super.key});

  @override
  State<WaterBillsMenuPage> createState() => _WaterBillsMenuPageState();
}

class _WaterBillsMenuPageState extends State<WaterBillsMenuPage> {
  @override
  void initState() {
    context
        .read<WaterBillsPackageBloc>()
        .add(const WaterBillsPackageEvent.getPackageList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Water Bills",
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
      body: SingleChildScrollView(
        child: BlocBuilder<WaterBillsPackageBloc, WaterBillsPackageState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Padding(
                padding: EdgeInsets.only(top: 48),
                child: Center(child: CustomLoadingWidget()),
              ),
              getPackageSuccess: (data) {
                final packageData = data.data;
                List<PpobPackageDataItemDenominationList> denominationList = [];
                denominationList.addAll(
                  packageData.first.denominationList ?? [],
                );
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
                      child: Text(
                        "PDAM",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: denominationList.length,
                      itemBuilder: (context, index) {
                        return WaterBillsMenuItemWidget(
                          package: packageData.first,
                          denomination: denominationList[index],
                        );
                      },
                    ),
                  ],
                );
              },
              failed: (message) => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
