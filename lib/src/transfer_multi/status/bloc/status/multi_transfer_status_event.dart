part of 'multi_transfer_status_bloc.dart';

@freezed
class MultiTransferStatusEvent with _$MultiTransferStatusEvent {
  const factory MultiTransferStatusEvent.getTransactionStatus(String refId) = _GetTransactionStatus;
}
