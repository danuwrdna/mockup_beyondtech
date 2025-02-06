part of 'register_verify_otp_whatsapp_bloc.dart';

@freezed
class RegisterVerifyOtpWhatsappEvent with _$RegisterVerifyOtpWhatsappEvent {
  const factory RegisterVerifyOtpWhatsappEvent.verifyOtpWhatsapp(String phoneNumber, String otpCode) = _VerifyOtpWhatsapp;
}
