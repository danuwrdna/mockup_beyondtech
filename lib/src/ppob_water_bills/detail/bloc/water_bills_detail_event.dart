part of 'water_bills_detail_bloc.dart';

@freezed
class WaterBillsDetailEvent with _$WaterBillsDetailEvent {
  const factory WaterBillsDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}