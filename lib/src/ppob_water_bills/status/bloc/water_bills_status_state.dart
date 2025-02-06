part of 'water_bills_status_bloc.dart';

@freezed
class WaterBillsStatusState with _$WaterBillsStatusState {
  const factory WaterBillsStatusState.initial() = _Initial;
  const factory WaterBillsStatusState.loading() = _Loading;
  const factory WaterBillsStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory WaterBillsStatusState.failed(String message) = _Failed;
}
