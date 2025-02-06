import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/src/navigation_history/bloc/bloc/transaction_history_bloc.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_item_model.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_tab_enum.dart';
import 'package:bpay_mobile/src/navigation_history/views/history_detail_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class HistoryTabPage extends StatefulWidget {
  const HistoryTabPage({
    super.key,
    this.type,
  });

  final TransactionHistoryTab? type;

  @override
  State<HistoryTabPage> createState() => _HistoryTabPageState();
}

class _HistoryTabPageState extends State<HistoryTabPage> {
  late Map<String, List<TransactionHistoryItemModel>> groupedData;
  late List<TransactionHistoryItemModel> filteredData;
  HistoryTransferSingleItem? itemData;

  // @override
  // void initState() {
  //   super.initState();

  //   int transactionLimit = 10;

  //   context.read<TransactionHistoryBloc>().add(
  //         TransactionHistoryEvent.getTransactionHistory(
  //           widget.type == TransactionHistoryTab.received
  //               ? HistoryBoundaryType.inbound
  //               : widget.type == TransactionHistoryTab.spent
  //                   ? HistoryBoundaryType.outbound
  //                   : null,
  //           transactionLimit,
  //         ),
  //       );
  // }

  TransactionHistoryItemModel?
      mapHistoryTransferSingleItemtoTransactionHistoryItemModel(
          HistoryTransferSingleItem item) {
    if (item.createdAt == null || item.createdAt! < 0) {
      return null;
    }

    Widget getTransactionIcon(String? transactionTitle) {
      if (transactionTitle == "Transfer Beyond") {
        return Assets.icons.icBalanceTransfer.image(scale: 1);
      } else if (transactionTitle == "Topup Balance") {
        return Assets.icons.icBalanceTopup.image(scale: 1);
      } else if (transactionTitle == "Transfer To Bank") {
        return Assets.icons.icBankTransfer2.image(scale: 1);
      } else {
        return SvgPicture.asset(Assets.icons.icEWallet);
      }
    }

    return TransactionHistoryItemModel(
      label: item.transactionTitle ?? "",
      correspondent: item.paymentChannel?.method ?? "",
      date: DateTime.fromMillisecondsSinceEpoch(item.createdAt! * 1000),
      icon: getTransactionIcon(item.transactionTitle),
      nominal: item.formatted?.totalAmount ?? "",
      boundaryType: item.boundaryType,
      transactionId: item.transactionId,
      notes: item.recepients?.map((r) => r.note).toList() ?? [],
      paymentMethod: item.paymentChannel?.name ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [_buildTransactionList()],
      ),
    );
    // return SingleChildScrollView(
    //   child: BlocBuilder<TransactionHistoryBloc, TransactionHistoryState>(
    //     builder: (context, state) {
    //       return state.when(
    //         initial: () {
    //           return const Padding(
    //             padding: EdgeInsets.symmetric(vertical: 48),
    //             child: Center(child: CustomLoadingWidget()),
    //           );
    //         },
    //         loading: () {
    //           return const Padding(
    //             padding: EdgeInsets.symmetric(vertical: 48),
    //             child: Center(child: CustomLoadingWidget()),
    //           );
    //         },
    //         success: (data) {
    //           List<TransactionHistoryItemModel> transactionData = data.data!
    //               .map((item) =>
    //                   mapHistoryTransferSingleItemtoTransactionHistoryItemModel(
    //                       item))
    //               .where((item) => item != null)
    //               .cast<TransactionHistoryItemModel>()
    //               .toList();

    //           groupedData = transactionData.groupByMonth();
    //           return Column(
    //             children: [
    //               _buildTransactionList(groupedData),
    //             ],
    //           );
    //         },
    //         failed: (message) => Text("Failed to load: $message"),
    //       );
    //     },
    //   ),
    // );
  }

  Widget _buildTransactionList() {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
                child: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                    color: ColorResource.black100.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          )
        ]);
  }

  Widget _buildTransactionItems(
      List<TransactionHistoryItemModel> transactions) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: transactions.mapIndexed((index, transactionItem) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HistoryDetailPage(
                    transactionId:
                        transactionItem.transactionId?.isNotEmpty == true
                            ? transactionItem.transactionId!
                            : "Unknown Transaction",
                    boundaryType: transactionItem.boundaryType ?? "",
                    createdAt:
                        transactionItem.date.millisecondsSinceEpoch ~/ 1000,
                    paymentMethodName: transactionItem.paymentMethod,
                  );
                },
              ),
            );
          },
          child: Column(
            children: [
              TransactionHistoryItem(item: transactionItem),
              Visibility(
                visible: index < transactions.length - 1,
                child: const SizedBox(height: 16),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.item,
  });

  final TransactionHistoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorResource.black.withOpacity(0.24),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorResource.white,
                    border: Border.all(
                      color: ColorResource.blue900.withOpacity(0.4),
                    ),
                  ),
                  child: Center(child: item.icon),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.label,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.transactionId ?? "",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: ColorResource.black100.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat("dd MMMM yyyy").format(item.date),
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: ColorResource.black100.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            (item.boundaryType == HistoryBoundaryType.inbound.value)
                ? '+${item.nominal}'
                : '-${item.nominal}',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeightResource.semiBold,
              color: (item.boundaryType == HistoryBoundaryType.inbound.value)
                  ? ColorResource.green500
                  : ColorResource.red,
            ),
          ),
        ],
      ),
    );
  }
}
