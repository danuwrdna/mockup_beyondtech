part of 'change_pin_verify_otp_whatsapp_bloc.dart';

@freezed
class ChangePinVerifyOtpWhatsappEvent with _$ChangePinVerifyOtpWhatsappEvent {
  const factory ChangePinVerifyOtpWhatsappEvent.verifyOtpWhatsapp(String phoneNumber, String otpCode) = _VerifyOtpWhatsapp;
}
