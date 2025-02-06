part of 'ppob_bpjs_package_bloc.dart';

@freezed
class PpobBpjsPackageEvent with _$PpobBpjsPackageEvent {
  const factory PpobBpjsPackageEvent.getPackageList() = _GetBpjsPackageList;
}