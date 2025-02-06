part of 'phone_data_detail_bloc.dart';

@freezed
class PhoneDataDetailEvent with _$PhoneDataDetailEvent {
  const factory PhoneDataDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}
