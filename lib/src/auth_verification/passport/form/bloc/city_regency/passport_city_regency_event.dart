part of 'passport_city_regency_bloc.dart';

@freezed
class PassportCityRegencyEvent with _$PassportCityRegencyEvent {
  const factory PassportCityRegencyEvent.getCityRegency(String provinceId) = _GetCityRegency;
}
