part of 'register_verify_otp_sms_bloc.dart';

@freezed
class RegisterVerifyOtpSmsEvent with _$RegisterVerifyOtpSmsEvent {
  const factory RegisterVerifyOtpSmsEvent.verifyOtpSms(String phoneNumber, String otpCode) = _VerifyOtpSms;
}
