part of 'detail_transaction_bloc.dart';

@freezed
class DetailTransactionState with _$DetailTransactionState {
  const factory DetailTransactionState.initial() = _Initial;
  const factory DetailTransactionState.loading() = _Loading;
  const factory DetailTransactionState.success(DetailTransactionResponseModel? data) = _Success;
  const factory DetailTransactionState.failed(String message) = _Failed;
}
