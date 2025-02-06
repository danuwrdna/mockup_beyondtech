part of 'check_pin_general_bloc.dart';

@freezed
class CheckPinGeneralEvent with _$CheckPinGeneralEvent {
  const factory CheckPinGeneralEvent.checkPin(String pin) = _CheckPin;
}
