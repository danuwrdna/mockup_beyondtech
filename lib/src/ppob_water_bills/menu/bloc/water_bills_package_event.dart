part of 'water_bills_package_bloc.dart';

@freezed
class WaterBillsPackageEvent with _$WaterBillsPackageEvent {
  const factory WaterBillsPackageEvent.getPackageList() = _GetPackageList;
}
