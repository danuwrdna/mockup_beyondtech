part of 'send_otp_sms_bloc.dart';

@freezed
class SendOtpSmsEvent with _$SendOtpSmsEvent {
  const factory SendOtpSmsEvent.sendOtpSms(String phoneNumber, String timeLimitSeconds) = _SendOtpSms;
}
