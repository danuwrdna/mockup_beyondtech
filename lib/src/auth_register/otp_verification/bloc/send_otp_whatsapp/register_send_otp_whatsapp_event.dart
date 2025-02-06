part of 'register_send_otp_whatsapp_bloc.dart';

@freezed
class RegisterSendOtpWhatsappEvent with _$RegisterSendOtpWhatsappEvent {
  const factory RegisterSendOtpWhatsappEvent.sendOtpWhatsapp(String phoneNumber, String timeLimitSeconds) = _SendOtpWhatsapp;
}
