part of 'district_bloc.dart';

@freezed
class DistrictState with _$DistrictState {
  const factory DistrictState.initial() = _Initial;
  const factory DistrictState.loading() = _Loading;
  const factory DistrictState.success(DistrictListResponseModel data) = _Success;
  const factory DistrictState.failed(String message) = _Failed;
}
