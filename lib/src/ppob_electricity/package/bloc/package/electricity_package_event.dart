part of 'electricity_package_bloc.dart';

@freezed
class ElectricityPackageEvent with _$ElectricityPackageEvent {
  const factory ElectricityPackageEvent.getPackageList() = _GetPackageList;
}
