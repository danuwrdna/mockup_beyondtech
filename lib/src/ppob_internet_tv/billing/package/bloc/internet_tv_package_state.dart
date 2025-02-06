part of 'internet_tv_package_bloc.dart';

@freezed
class InternetTvPackageState with _$InternetTvPackageState {
  const factory InternetTvPackageState.initial() = _Initial;
  const factory InternetTvPackageState.loading() = _Loading;
  const factory InternetTvPackageState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory InternetTvPackageState.failed(String message) = _Failed;
}
