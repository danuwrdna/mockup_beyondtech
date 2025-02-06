part of 'water_bills_detail_bloc.dart';

@freezed
class WaterBillsDetailState with _$WaterBillsDetailState {
  const factory WaterBillsDetailState.initial() = _Initial;
  const factory WaterBillsDetailState.loading() = _Loading;
  const factory WaterBillsDetailState.getWaterBillsDetailSuccess(PpobCheckoutResponseModel data) = _GetWaterBpjsDetailSuccess;
  const factory WaterBillsDetailState.failed(String message) = _Failed;
}
