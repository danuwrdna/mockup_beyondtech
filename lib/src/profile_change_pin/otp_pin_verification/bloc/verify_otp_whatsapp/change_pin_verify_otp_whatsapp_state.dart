part of 'change_pin_verify_otp_whatsapp_bloc.dart';

@freezed
class ChangePinVerifyOtpWhatsappState with _$ChangePinVerifyOtpWhatsappState {
  const factory ChangePinVerifyOtpWhatsappState.initial() = _Initial;
  const factory ChangePinVerifyOtpWhatsappState.loading() = _Loading;
  const factory ChangePinVerifyOtpWhatsappState.success() = _Success;
  const factory ChangePinVerifyOtpWhatsappState.failed(String message) = _Failed;
}
