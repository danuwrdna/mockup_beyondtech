part of 'water_bills_status_bloc.dart';

@freezed
class WaterBillsStatusEvent with _$WaterBillsStatusEvent {
  const factory WaterBillsStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}