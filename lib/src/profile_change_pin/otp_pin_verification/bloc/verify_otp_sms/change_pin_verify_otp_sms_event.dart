part of 'change_pin_verify_otp_sms_bloc.dart';

@freezed
class ChangePinVerifyOtpSmsEvent with _$ChangePinVerifyOtpSmsEvent {
  const factory ChangePinVerifyOtpSmsEvent.verifyOtpSms(String phoneNumber, String otpCode) = _VerifyOtpSms;
}
