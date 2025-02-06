import 'package:bpay_mobile/src/navigation_history/models/transaction_history_item_model.dart';
import 'package:collection/collection.dart';

extension StringManipulationExtension on String {
  String capitalizeEach() {
    return isEmpty ? "" : split(" ").map((e) => e.capitalize()).join(" ");
  }

  String capitalize() {
    return isEmpty ? "" : (this[0].toUpperCase() + substring(1).toLowerCase());
  }
}

extension GroupByMonth on List<TransactionHistoryItemModel> {
  Map<String, List<TransactionHistoryItemModel>> groupByMonth() {
    return groupBy(this, (TransactionHistoryItemModel tx) {
      return '${tx.date.year}-${tx.date.month.toString().padLeft(2, '0')}';
    });
  }
}

extension GroupByDate on List<TransactionHistoryItemModel> {
  Map<String, List<TransactionHistoryItemModel>> groupByDate() {
    return groupBy(this, (TransactionHistoryItemModel tx) {
      return '${tx.date.year}-${tx.date.month.toString().padLeft(2, '0')}-${tx.date.day.toString().padLeft(2, '0')}';
    });
  }
}
