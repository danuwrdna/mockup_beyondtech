part of 'current_city_regency_bloc.dart';

@freezed
class CurrentCityRegencyEvent with _$CurrentCityRegencyEvent {
  const factory CurrentCityRegencyEvent.getCurrentCityRegency(String currentProvinceId) = _GetCurrentCityRegency;
}
