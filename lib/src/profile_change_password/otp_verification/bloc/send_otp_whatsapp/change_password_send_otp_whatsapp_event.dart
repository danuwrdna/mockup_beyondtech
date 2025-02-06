part of 'change_password_send_otp_whatsapp_bloc.dart';

@freezed
class ChangePasswordSendOtpWhatsappEvent with _$ChangePasswordSendOtpWhatsappEvent {
  const factory ChangePasswordSendOtpWhatsappEvent.sendOtpWhatsapp(String phoneNumber, String timeLimitSeconds) = _SendOtpWhatsapp;
}
