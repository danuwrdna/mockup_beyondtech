part of 'single_transfer_status_bloc.dart';

@freezed
class SingleTransferStatusEvent with _$SingleTransferStatusEvent {
  const factory SingleTransferStatusEvent.getTransactionStatus(String refId) =
      _GetTransactionStatus;
  const factory SingleTransferStatusEvent.getBankTransferTransactionHistory(
      String transactionId, int lastDate) = _GetBankTransferTransactionHistory;
}
