import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/navigation/cubit/navigation_cubit.dart';
import 'package:bpay_mobile/src/navigation_history/views/history_page.dart';
import 'package:bpay_mobile/src/navigation_home/views/home_page.dart';
import 'package:bpay_mobile/src/navigation_home/widgets/transfer_type_bottom_sheet.dart';
import 'package:bpay_mobile/src/navigation_notification/views/notification_page.dart';
import 'package:bpay_mobile/src/navigation_profile/views/profile_page.dart';
import 'package:bpay_mobile/src/navigation/widgets/bottom_navigation_item.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int activePage = 0;
  bool isVoucher = false;

  @override
  void initState() {
    context.read<NavigationCubit>().changePage(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigationCubit, NavigationState>(
      listener: (context, state) {
        state.when(
          page: (page, isVoucher) {
            setState(() {
              activePage = page;
              this.isVoucher = isVoucher;
            });
          },
        );
      },
      child: Scaffold(
        body: buildBody(),
        bottomNavigationBar: Container(
          height: 100,
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
          decoration: BoxDecoration(
            color: ColorResource.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: ColorResource.black.withOpacity(0.13),
                offset: const Offset(0, -2),
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavigationItem(
                activeIcon: const Icon(
                  Icons.home_rounded,
                  size: 28,
                  color: ColorResource.blue900,
                ),
                inactiveIcon: const Icon(
                  Icons.home_outlined,
                  size: 28,
                  color: ColorResource.grey400,
                ),
                label: "Home",
                isActive: activePage == 0,
                onPressed: () {
                  context.read<NavigationCubit>().changePage(0);
                },
              ),
              BottomNavigationItem(
                activeIcon: const Icon(
                  Icons.list_alt_rounded,
                  size: 28,
                  color: ColorResource.blue900,
                ),
                inactiveIcon: const Icon(
                  Icons.list_alt_outlined,
                  size: 28,
                  color: ColorResource.grey400,
                ),
                label: "History",
                isActive: activePage == 1,
                onPressed: () {
                  context.read<NavigationCubit>().changePage(1);
                },
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    showDragHandle: true,
                    enableDrag: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return const TransferTypeBottomSheet();
                    },
                  );
                },
                child: Container(
                  height: 72,
                  width: 72,
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorResource.blue600,
                  ),
                  child: Center(
                    child: Assets.icons.icTransferMain.image(scale: 2),
                  ),
                ),
              ),
              BottomNavigationItem(
                activeIcon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 28,
                  color: ColorResource.blue900,
                ),
                inactiveIcon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 28,
                  color: ColorResource.grey400,
                ),
                label: "Info",
                isActive: activePage == 2,
                onPressed: () {
                  context.read<NavigationCubit>().changePage(2);
                },
              ),
              BottomNavigationItem(
                activeIcon: const Icon(
                  Icons.account_circle_rounded,
                  size: 28,
                  color: ColorResource.blue900,
                ),
                inactiveIcon: const Icon(
                  Icons.account_circle_outlined,
                  size: 28,
                  color: ColorResource.grey400,
                ),
                label: "Profile",
                isActive: activePage == 3,
                onPressed: () {
                  context.read<NavigationCubit>().changePage(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    switch (activePage) {
      case 0:
        return const HomePage();
      case 1:
        return const HistoryPage();
      case 2:
        if (isVoucher) {
          return const NotificationPage(tabIndex: 1);
        }
        return const NotificationPage();
      case 3:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
