part of 'electricity_detail_bloc.dart';

@freezed
class ElectricityDetailEvent with _$ElectricityDetailEvent {
  const factory ElectricityDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}
