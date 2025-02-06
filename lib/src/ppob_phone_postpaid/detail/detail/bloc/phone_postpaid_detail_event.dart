part of 'phone_postpaid_detail_bloc.dart';

@freezed
class PhonePostpaidDetailEvent with _$PhonePostpaidDetailEvent {
  const factory PhonePostpaidDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}