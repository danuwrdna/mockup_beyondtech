part of 'remittance_status_bloc.dart';

@freezed
class RemittanceStatusEvent with _$RemittanceStatusEvent {
  const factory RemittanceStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}
