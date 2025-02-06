part of 'change_pin_send_otp_whatsapp_bloc.dart';

@freezed
class ChangePinSendOtpWhatsappEvent with _$ChangePinSendOtpWhatsappEvent {
  const factory ChangePinSendOtpWhatsappEvent.sendOtpWhatsapp(String phoneNumber, String timeLimitSeconds) = _SendOtpWhatsapp;
}
