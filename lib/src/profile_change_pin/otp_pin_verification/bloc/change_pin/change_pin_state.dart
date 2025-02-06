part of 'change_pin_bloc.dart';

@freezed
class ChangePinState with _$ChangePinState {
  const factory ChangePinState.initial() = _Initial;
  const factory ChangePinState.loading() = _Loading;
  const factory ChangePinState.success() = _Success;
  const factory ChangePinState.failed(String message) = _Failed;
}


