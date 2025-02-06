part of 'bpjs_transaction_bloc.dart';

@freezed
class BpjsTransactionState with _$BpjsTransactionState {
  const factory BpjsTransactionState.initial() = _Initial;
  const factory BpjsTransactionState.loading() = _Loading;
  const factory BpjsTransactionState.transactionBpjsSuccess(PpobTransactionResponseModel data) = _TransactionBpjsSuccess;
  const factory BpjsTransactionState.failed(String message) = _Failed;
}
