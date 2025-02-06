part of 'passport_city_regency_bloc.dart';

@freezed
class PassportCityRegencyState with _$PassportCityRegencyState {
  const factory PassportCityRegencyState.initial() = _Initial;
  const factory PassportCityRegencyState.loading() = _Loading;
  const factory PassportCityRegencyState.success(CityRegencyListResponseModel data) = _Success;
  const factory PassportCityRegencyState.failed(String message) = _Failed;
}
