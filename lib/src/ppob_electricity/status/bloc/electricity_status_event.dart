part of 'electricity_status_bloc.dart';

@freezed
class ElectricityStatusEvent with _$ElectricityStatusEvent {
  const factory ElectricityStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}
