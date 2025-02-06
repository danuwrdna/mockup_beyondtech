part of 'phone_postpaid_status_bloc.dart';

@freezed
class PhonePostpaidStatusEvent with _$PhonePostpaidStatusEvent {
  const factory PhonePostpaidStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}