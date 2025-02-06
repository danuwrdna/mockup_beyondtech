part of 'current_city_regency_bloc.dart';

@freezed
class CurrentCityRegencyState with _$CurrentCityRegencyState {
  const factory CurrentCityRegencyState.initial() = _Initial;
  const factory CurrentCityRegencyState.loading() = _Loading;
  const factory CurrentCityRegencyState.success(CityRegencyListResponseModel data) = _Success;
  const factory CurrentCityRegencyState.failed(String message) = _Failed;
}
