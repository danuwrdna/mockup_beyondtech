part of 'phone_data_status_bloc.dart';

@freezed
class PhoneDataStatusEvent with _$PhoneDataStatusEvent {
  const factory PhoneDataStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}
