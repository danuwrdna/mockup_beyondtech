part of 'change_pin_bloc.dart';

@freezed
class ChangePinEvent with _$ChangePinEvent {
  const factory ChangePinEvent.changePin(
    String lastPin,
    String newPin,
  ) = _ChangePin;
}
