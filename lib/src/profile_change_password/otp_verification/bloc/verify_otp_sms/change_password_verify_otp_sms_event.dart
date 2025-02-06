part of 'change_password_verify_otp_sms_bloc.dart';

@freezed
class ChangePasswordVerifyOtpSmsEvent with _$ChangePasswordVerifyOtpSmsEvent {
  const factory ChangePasswordVerifyOtpSmsEvent.verifyOtpSms(String phoneNumber, String otpCode) = _VerifyOtpSms;
}
