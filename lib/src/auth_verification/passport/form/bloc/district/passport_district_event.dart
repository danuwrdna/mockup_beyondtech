part of 'passport_district_bloc.dart';

@freezed
class PassportDistrictEvent with _$PassportDistrictEvent {
  const factory PassportDistrictEvent.getDistrict(String cityRegencyId) = _GetDistrict;
}
