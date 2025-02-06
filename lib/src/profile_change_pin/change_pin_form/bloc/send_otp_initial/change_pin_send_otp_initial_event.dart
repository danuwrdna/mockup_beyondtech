part of 'change_pin_send_otp_initial_bloc.dart';

@freezed
class ChangePinSendOtpInitialEvent with _$ChangePinSendOtpInitialEvent {
  const factory ChangePinSendOtpInitialEvent.sendOtpInitial(String phoneNumber, String timeLimitSeconds) = _SendOtpInitial;
}
