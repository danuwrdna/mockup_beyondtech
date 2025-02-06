part of 'change_password_verify_otp_whatsapp_bloc.dart';

@freezed
class ChangePasswordVerifyOtpWhatsappEvent with _$ChangePasswordVerifyOtpWhatsappEvent {
  const factory ChangePasswordVerifyOtpWhatsappEvent.verifyOtpWhatsapp(String phoneNumber, String otpCode) = _VerifyOtpWhatsapp;
}
