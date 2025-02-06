part of 'e_wallet_status_bloc.dart';

@freezed
class EWalletStatusEvent with _$EWalletStatusEvent {
  const factory EWalletStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}
