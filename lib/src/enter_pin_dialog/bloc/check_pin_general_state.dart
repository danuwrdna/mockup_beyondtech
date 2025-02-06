part of 'check_pin_general_bloc.dart';

@freezed
class CheckPinGeneralState with _$CheckPinGeneralState {
  const factory CheckPinGeneralState.initial() = _Initial;
  const factory CheckPinGeneralState.loading() = _Loading;
  const factory CheckPinGeneralState.success() = _Success;
  const factory CheckPinGeneralState.failed(String message) = _Failed;
}
