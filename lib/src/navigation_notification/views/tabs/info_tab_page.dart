import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/notification/notify_info_response_model.dart';
import 'package:bpay_mobile/src/navigation_notification/bloc/notify-info/bloc/notify_info_bloc.dart';
import 'package:bpay_mobile/src/navigation_notification/models/notify_info_item_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class InfoTabPage extends StatefulWidget {
  const InfoTabPage({super.key});

  @override
  State<InfoTabPage> createState() => _InfoTabPageState();
}

class _InfoTabPageState extends State<InfoTabPage> {
  late Map<String, List<NotifyItemModel>> groupedData;

  // @override
  // void initState() {
  //   int page = 1;
  //   int itemLimit = 10;
  //   context
  //       .read<NotifyInfoBloc>()
  //       .add(NotifyInfoEvent.getNotify(page, itemLimit));
  //   super.initState();
  // }

  List<NotifyItemModel?> mapNotificationList(
      List<NotificationData> notificationDataList) {
    return notificationDataList
        .map((item) => mapNotifyItemModel(item))
        .toList();
  }

  NotifyItemModel? mapNotifyItemModel(NotificationData item) {
    DateTime parsedDate = DateTime.parse(item.createdAt);

    return NotifyItemModel(
      title: item.title,
      date: parsedDate,
      message: item.message,
      icon: Assets.icons.icChatCustomerService.image(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InfoTopUpSuccessWidget(),
    );
    // return BlocBuilder<NotifyInfoBloc, NotifyInfoState>(
    //   builder: (context, state) {
    //     return state.when(
    //       initial: () => const Center(
    //         child: CircularProgressIndicator(strokeWidth: 4),
    //       ),
    //       loading: () => const Center(
    //         child: CircularProgressIndicator(strokeWidth: 4),
    //       ),
    //       getNotifyInfoSuccess: (data) {
    //         List<NotifyItemModel?> notifyData =
    //             mapNotificationList(data.data.data);

    //         return ListView.builder(
    //           itemCount: notifyData.length,
    //           padding: const EdgeInsets.only(top: 30, bottom: 20),
    //           itemBuilder: (context, index) {
    //             final item = notifyData[index];
    //             if (item != null) {
    //               return Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 20),
    //                 child: InfoTopUpSuccessWidget(
    //                   item: item,
    //                 ),
    //               );
    //             } else {
    //               return const SizedBox.shrink();
    //             }
    //           },
    //         );
    //       },
    //       failed: (message) => const Center(
    //         child: Text("No Info update"),
    //       ),
    //     );
    //   },
    // );
  }
}

class InfoTopUpSuccessWidget extends StatelessWidget {
  const InfoTopUpSuccessWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorResource.black.withOpacity(0.24),
          ),
        ),
      ),
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              Assets.icons.icTopUp,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 "test",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.successText),
                ),
                const SizedBox(height: 6),
                Text(
              "test",
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
