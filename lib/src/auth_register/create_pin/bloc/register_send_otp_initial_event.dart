part of 'register_send_otp_initial_bloc.dart';

@freezed
class RegisterSendOtpInitialEvent with _$RegisterSendOtpInitialEvent {
  const factory RegisterSendOtpInitialEvent.sendOtpWhatsapp(String phoneNumber, String timeLimitSeconds) = _SendOtpWhatsapp;
}
