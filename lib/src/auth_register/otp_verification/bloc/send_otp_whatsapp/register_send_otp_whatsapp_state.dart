part of 'register_send_otp_whatsapp_bloc.dart';

@freezed
class RegisterSendOtpWhatsappState with _$RegisterSendOtpWhatsappState {
  const factory RegisterSendOtpWhatsappState.initial() = _Initial;
  const factory RegisterSendOtpWhatsappState.loading() = _Loading;
  const factory RegisterSendOtpWhatsappState.success() = _Success;
  const factory RegisterSendOtpWhatsappState.failed(String message) = _Failed;
}
