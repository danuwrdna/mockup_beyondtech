part of 'phone_postpaid_package_bloc.dart';

@freezed
class PhonePostpaidPackageEvent with _$PhonePostpaidPackageEvent {
  const factory PhonePostpaidPackageEvent.getPackageList() = _GetPackageList;
}