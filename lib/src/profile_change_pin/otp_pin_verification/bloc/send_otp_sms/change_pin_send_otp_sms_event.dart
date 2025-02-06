part of 'change_pin_send_otp_sms_bloc.dart';

@freezed
class ChangePinSendOtpSmsEvent with _$ChangePinSendOtpSmsEvent {
  const factory ChangePinSendOtpSmsEvent.sendOtpSms(String phoneNumber, String timeLimitSeconds) = _SendOtpSms;
}
