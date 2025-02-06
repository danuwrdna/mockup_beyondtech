part of 'internet_tv_list_bloc.dart';

@freezed
class InternetTvListState with _$InternetTvListState {
  const factory InternetTvListState.initial() = _Initial;
  const factory InternetTvListState.loading() = _LOading;
  const factory InternetTvListState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory InternetTvListState.failed(String message) = _Failed;
}
