part of 'change_password_send_otp_sms_bloc.dart';

@freezed
class ChangePasswordSendOtpSmsEvent with _$ChangePasswordSendOtpSmsEvent {
  const factory ChangePasswordSendOtpSmsEvent.sendOtpSms(String phoneNumber, String timeLimitSeconds) = _SendOtpSms;
}
