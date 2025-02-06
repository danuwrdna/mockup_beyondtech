part of 'current_district_bloc.dart';

@freezed
class CurrentDistrictState with _$CurrentDistrictState {
  const factory CurrentDistrictState.initial() = _Initial;
  const factory CurrentDistrictState.loading() = _Loading;
  const factory CurrentDistrictState.success(DistrictListResponseModel data) = _Success;
  const factory CurrentDistrictState.failed(String message) = _Failed;
}
