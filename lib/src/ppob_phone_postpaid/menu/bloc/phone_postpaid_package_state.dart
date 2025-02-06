part of 'phone_postpaid_package_bloc.dart';

@freezed
class PhonePostpaidPackageState with _$PhonePostpaidPackageState {
  const factory PhonePostpaidPackageState.initial() = _Initial;
  const factory PhonePostpaidPackageState.loading() = _Loading;
  const factory PhonePostpaidPackageState.getPackageSuccess(PpobPackageResponseModel data) = _GetPackageSuccess;
  const factory PhonePostpaidPackageState.failed(String message) = _Failed;
}
