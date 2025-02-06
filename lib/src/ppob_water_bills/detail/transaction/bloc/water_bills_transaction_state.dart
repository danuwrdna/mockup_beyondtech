part of 'water_bills_transaction_bloc.dart';

@freezed
class WaterBillsTransactionState with _$WaterBillsTransactionState {
  const factory WaterBillsTransactionState.initial() = _Initial;
  const factory WaterBillsTransactionState.loading() = _Loading;
  const factory WaterBillsTransactionState.transactionWaterBillsSuccess(PpobTransactionResponseModel data) = _TransactionWaterBillsSuccess;
  const factory WaterBillsTransactionState.failed(String message) = _Failed;
}
