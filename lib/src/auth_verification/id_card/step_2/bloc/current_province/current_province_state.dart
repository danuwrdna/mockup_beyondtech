part of 'current_province_bloc.dart';

@freezed
class CurrentProvinceState with _$CurrentProvinceState {
  const factory CurrentProvinceState.initial() = _Initial;
  const factory CurrentProvinceState.loading() = _Loading;
  const factory CurrentProvinceState.success(ProvinceListResponseModel data) = _Success;
  const factory CurrentProvinceState.failed(String message) = _Failed;
}
