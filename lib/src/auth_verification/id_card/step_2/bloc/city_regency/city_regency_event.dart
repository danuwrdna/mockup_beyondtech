part of 'city_regency_bloc.dart';

@freezed
class CityRegencyEvent with _$CityRegencyEvent {
  const factory CityRegencyEvent.getCityRegency(String provinceId) = _GetCityRegency;
}
