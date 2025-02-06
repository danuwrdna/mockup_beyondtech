part of 'internet_tv_status_bloc.dart';

@freezed
class InternetTvStatusEvent with _$InternetTvStatusEvent {
  const factory InternetTvStatusEvent.getTransactionStatus(String transactionId) = _GetTransactionStatus;
}