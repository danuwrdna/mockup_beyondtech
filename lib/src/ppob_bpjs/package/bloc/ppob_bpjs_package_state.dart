part of 'ppob_bpjs_package_bloc.dart';

@freezed
class PpobBpjsPackageState with _$PpobBpjsPackageState {
  const factory PpobBpjsPackageState.initial() = _Initial;
  const factory PpobBpjsPackageState.loading() = _LOading;
  const factory PpobBpjsPackageState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory PpobBpjsPackageState.failed(String message) = _Failed;
}
