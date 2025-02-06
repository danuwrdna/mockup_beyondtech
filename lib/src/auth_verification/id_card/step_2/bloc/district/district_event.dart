part of 'district_bloc.dart';

@freezed
class DistrictEvent with _$DistrictEvent {
  const factory DistrictEvent.getDistrict(String cityRegencyId) = _GetDistrict;
}
