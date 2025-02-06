part of 'passport_province_bloc.dart';

@freezed
class PassportProvinceState with _$PassportProvinceState {
  const factory PassportProvinceState.initial() = _Initial;
  const factory PassportProvinceState.loading() = _Loading;
  const factory PassportProvinceState.success(ProvinceListResponseModel data) = _Success;
  const factory PassportProvinceState.failed(String message) = _Failed;
}
