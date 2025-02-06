import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_tab_enum.dart';
import 'package:bpay_mobile/src/navigation_history/views/tabs/history_tab_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 128,
            decoration: const BoxDecoration(
              color: ColorResource.blue850,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    LocaleKeys.historypage_transaction_history.tr(),
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
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
                    indicatorColor: ColorResource.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: tabController,
                    labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeightResource.bold,
                      color: ColorResource.red,
                    ),
                    unselectedLabelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeightResource.regular,
                    ),
                    unselectedLabelColor: ColorResource.black100.withOpacity(
                      0.60,
                    ),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(child: Text(LocaleKeys.historypage_all.tr())),
                      Tab(child: Text(LocaleKeys.historypage_received.tr())),
                      Tab(child: Text(LocaleKeys.historypage_spent.tr())),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      HistoryTabPage(type: TransactionHistoryTab.all),
                      HistoryTabPage(type: TransactionHistoryTab.received),
                      HistoryTabPage(type: TransactionHistoryTab.spent),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
