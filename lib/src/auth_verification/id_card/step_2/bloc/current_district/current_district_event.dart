part of 'current_district_bloc.dart';

@freezed
class CurrentDistrictEvent with _$CurrentDistrictEvent {
  const factory CurrentDistrictEvent.getCurrentDistrict(String currentCityRegencyId) = _GetCurrentDistrict;
}
