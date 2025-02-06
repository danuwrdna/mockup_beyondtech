part of 'bpjs_status_bloc.dart';

@freezed
class BpjsStatusEvent with _$BpjsStatusEvent {
  const factory BpjsStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}