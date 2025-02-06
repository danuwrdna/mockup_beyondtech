part of 'water_bills_package_bloc.dart';

@freezed
class WaterBillsPackageState with _$WaterBillsPackageState {
  const factory WaterBillsPackageState.initial() = _Initial;
  const factory WaterBillsPackageState.loading() = _Loading;
  const factory WaterBillsPackageState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory WaterBillsPackageState.failed(String message) = _Failed;
}
