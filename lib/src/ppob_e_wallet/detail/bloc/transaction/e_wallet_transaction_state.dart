part of 'e_wallet_transaction_bloc.dart';

@freezed
class EWalletTransactionState with _$EWalletTransactionState {
  const factory EWalletTransactionState.initial() = _Initial;
  const factory EWalletTransactionState.loading() = _Loading;
  const factory EWalletTransactionState.transactionSuccess(PpobTransactionResponseModel data) = _TransactionSuccess;
  const factory EWalletTransactionState.failed(String message) = _Failed;
}
