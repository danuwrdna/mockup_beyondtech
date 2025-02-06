part of 'city_regency_bloc.dart';

@freezed
class CityRegencyState with _$CityRegencyState {
  const factory CityRegencyState.initial() = _Initial;
  const factory CityRegencyState.loading() = _Loading;
  const factory CityRegencyState.success(CityRegencyListResponseModel data) = _Success;
  const factory CityRegencyState.failed(String message) = _Failed;
}
