part of 'internet_tv_transaction_bloc.dart';

@freezed
class InternetTvTransactionState with _$InternetTvTransactionState {
  const factory InternetTvTransactionState.initial() = _Initial;
  const factory InternetTvTransactionState.loading() = _Loading;
  const factory InternetTvTransactionState.transactionInternetTvSuccess(PpobTransactionResponseModel data) = _TransactionInternetTvSuccess;
  const factory InternetTvTransactionState.failed(String message) = _Failed;
}
