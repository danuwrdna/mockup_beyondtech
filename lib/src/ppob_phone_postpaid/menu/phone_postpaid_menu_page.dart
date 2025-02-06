import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/menu/bloc/phone_postpaid_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/menu/widget/phone_postpaid_item_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class PhonePostpaidMenuPage extends StatefulWidget {
  const PhonePostpaidMenuPage({super.key});

  @override
  State<PhonePostpaidMenuPage> createState() => _PhonePostpaidMenuPageState();
}

class _PhonePostpaidMenuPageState extends State<PhonePostpaidMenuPage> {
  
  @override
  void initState() {
    context
        .read<PhonePostpaidPackageBloc>()
        .add(const PhonePostpaidPackageEvent.getPackageList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Phone Postpaid",
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
        child: BlocBuilder<PhonePostpaidPackageBloc, PhonePostpaidPackageState>(
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
                        "Phone Postpaid",
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
                        return PhonePostpaidItemWidget(
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