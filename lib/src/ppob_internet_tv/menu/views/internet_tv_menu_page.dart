import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/menu/bloc/internet_tv_list_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/menu/widget/internet_tv_service_item_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class InternetTvMenuPage extends StatefulWidget {
  const InternetTvMenuPage({super.key});

  @override
  State<InternetTvMenuPage> createState() => _InternetTvMenuPageState();
}

class _InternetTvMenuPageState extends State<InternetTvMenuPage> {
  @override
  void initState() {
    context
        .read<InternetTvListBloc>()
        .add(const InternetTvListEvent.getPackageList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "Internet & TV",
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
        child: BlocBuilder<InternetTvListBloc, InternetTvListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Padding(
                padding: EdgeInsets.only(top: 48),
                child: Center(child: CustomLoadingWidget()),
              ),
              getPackageSuccess: (data) {
                final packageData = data.data;

                // Pisahkan data berdasarkan package_name
                final List<PpobPackageDataItem> internetPackages = packageData
                    .where((package) => package.packageName == "Internet")
                    .toList();

                final List<PpobPackageDataItem> tvPackages = packageData
                    .where((package) =>
                        package.packageName == "TV" ||
                        package.packageName == "INDOVISION")
                    .toList();

                // Tampilkan data Internet dan TV secara terpisah
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bagian untuk paket Internet
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: internetPackages.length,
                      itemBuilder: (context, index) {
                        final package = internetPackages[index];
                        final denominationList = package.denominationList ?? [];
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: denominationList.length,
                          itemBuilder: (context, denomIndex) {
                            return InternetTvServiceItemWidget(
                              package: package,
                              denomination: denominationList[denomIndex],
                            );
                          },
                        );
                      },
                    ),

                    // Bagian untuk paket TV
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
                      child: Text(
                        "TV",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tvPackages.length,
                      itemBuilder: (context, index) {
                        final package = tvPackages[index];
                        final denominationList = package.denominationList ?? [];
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: denominationList.length,
                          itemBuilder: (context, denomIndex) {
                            return InternetTvServiceItemWidget(
                              package: package,
                              denomination: denominationList[denomIndex],
                            );
                          },
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
