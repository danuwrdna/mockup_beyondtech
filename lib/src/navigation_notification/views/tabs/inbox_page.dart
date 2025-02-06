import 'package:bpay_mobile/services/models/notification/notify_inbox_response_model.dart';
import 'package:bpay_mobile/src/navigation_notification/bloc/inbox/bloc/notify_inbox_bloc.dart';
import 'package:bpay_mobile/src/navigation_notification/models/notify_inbox_item_model.dart';
import 'package:bpay_mobile/src/navigation_notification/views/tabs/inbox_detail_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class InboxTabPage extends StatefulWidget {
  const InboxTabPage({super.key});

  @override
  State<InboxTabPage> createState() => _InboxTabPageState();
}

class _InboxTabPageState extends State<InboxTabPage> {
  late Map<String, List<InboxItemModel>> groupedData;
  InboxItemModel? item;

  // @override
  // void initState() {
  //   int page = 1;
  //   int itemLimit = 4;
  //   context
  //       .read<NotifyInboxBloc>()
  //       .add(NotifyInboxEvent.getInbox(page, itemLimit));
  //   super.initState();
  // }

  List<InboxItemModel?> mapNotificationInboxList(
      List<InboxItem> inboxDataList) {
    return inboxDataList.map((item) => mapInboxItemModel(item)).toList();
  }

  InboxItemModel? mapInboxItemModel(InboxItem item) {
    DateTime parsedDate = DateTime.parse(item.createdAt);
    CachedNetworkImage bannerImage = CachedNetworkImage(
      imageUrl: item.banner,
      width: 200,
      height: 100,
      fit: BoxFit.fill,
    );

    return InboxItemModel(
        title: item.title,
        date: parsedDate,
        message: item.message,
        banner: bannerImage,
        url: item.url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InboxItemWidget(),
    );
    // return BlocBuilder<NotifyInboxBloc, NotifyInboxState>(
    //   builder: (context, state) {
    //     return state.when(
    //       initial: () => const Center(
    //         child: CircularProgressIndicator(strokeWidth: 4),
    //       ),
    //       loading: () => const Center(
    //         child: CircularProgressIndicator(strokeWidth: 4),
    //       ),
    //       success: (data) {
    //         List<InboxItemModel?> inboxData =
    //             mapNotificationInboxList(data.data.data);

    //         return ListView.builder(
    //           itemCount: inboxData.length,
    //           itemBuilder: (context, index) {
    //             final item = inboxData[index];
    //             if (item != null) {
    //               return Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 20),
    //                 child: InboxItemWidget(
    //                   item: item,
    //                 ),
    //               );
    //             } else {
    //               return const SizedBox.shrink();
    //             }
    //           },
    //         );
    //       },
    //       failed: (String message) => Center(
    //         child: Text("Failed to Load : $message"),
    //       ),
    //     );
    //   },
    // );
  }
}

class InboxItemWidget extends StatelessWidget {
  const InboxItemWidget({
    super.key,
    // required this.item,
  });

  // final InboxItemModel item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nulll",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "2020",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.grey400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: const Color(0xFFFFF3EF),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   // return InboxDetailPage();
                        // }));
                      },
                      child: CommonOutlinedContainer(
                        borderColor: ColorResource.grey400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Row(
                            children: [
                              // Expanded(
                              //   child: item.banner,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
