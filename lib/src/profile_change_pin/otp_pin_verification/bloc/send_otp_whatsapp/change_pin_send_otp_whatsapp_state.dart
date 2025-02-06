part of 'change_pin_send_otp_whatsapp_bloc.dart';

@freezed
class ChangePinSendOtpWhatsappState with _$ChangePinSendOtpWhatsappState {
  const factory ChangePinSendOtpWhatsappState.initial() = _Initial;
  const factory ChangePinSendOtpWhatsappState.loading() = _Loading;
  const factory ChangePinSendOtpWhatsappState.success() = _Success;
  const factory ChangePinSendOtpWhatsappState.failed(String message) = _Failed;
}
