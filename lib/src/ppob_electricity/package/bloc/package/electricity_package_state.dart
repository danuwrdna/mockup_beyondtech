part of 'electricity_package_bloc.dart';

@freezed
class ElectricityPackageState with _$ElectricityPackageState {
  const factory ElectricityPackageState.initial() = _Initial;
  const factory ElectricityPackageState.loading() = _Loading;
  const factory ElectricityPackageState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory ElectricityPackageState.failed(String message) = _Failed;
}
