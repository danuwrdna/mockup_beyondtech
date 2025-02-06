part of 'passport_district_bloc.dart';

@freezed
class PassportDistrictState with _$PassportDistrictState {
  const factory PassportDistrictState.initial() = _Initial;
  const factory PassportDistrictState.loading() = _Loading;
  const factory PassportDistrictState.success(DistrictListResponseModel data) = _Success;
  const factory PassportDistrictState.failed(String message) = _Failed;
}
