part of 'electricity_transaction_bloc.dart';

@freezed
class ElectricityTransactionState with _$ElectricityTransactionState {
  const factory ElectricityTransactionState.initial() = _Initial;
  const factory ElectricityTransactionState.loading() = _Loading;
  const factory ElectricityTransactionState.transactionSuccess(PpobTransactionResponseModel data) = _TransactionSuccess;
  const factory ElectricityTransactionState.failed(String message) = _Failed;
}
