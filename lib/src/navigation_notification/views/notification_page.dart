import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/main.dart';
import 'package:bpay_mobile/src/navigation_notification/views/tabs/inbox_page.dart';
import 'package:bpay_mobile/src/navigation_notification/views/tabs/info_tab_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key, this.tabIndex = 0});

  final int tabIndex;

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.animateTo(widget.tabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.notification_notification_title.tr(),
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeightResource.semiBold,
              color: ColorResource.white),
        ),
        backgroundColor: ColorResource.primary,
        toolbarHeight: 84,
      ),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: ColorResource.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorResource.black100.withOpacity(0.16),
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  )
                ],
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeightResource.bold,
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeightResource.regular,
                ),
                unselectedLabelColor: ColorResource.black100.withOpacity(0.60),
                tabs: [
                  Tab(
                    child: Text(
                      "Info",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      LocaleKeys.notification_inbox.tr(),
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                InfoTabPage(),
                InboxTabPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
