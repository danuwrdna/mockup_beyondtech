part of 'register_verify_otp_whatsapp_bloc.dart';

@freezed
class RegisterVerifyOtpWhatsappState with _$RegisterVerifyOtpWhatsappState {
  const factory RegisterVerifyOtpWhatsappState.initial() = _Initial;
  const factory RegisterVerifyOtpWhatsappState.loading() = _Loading;
  const factory RegisterVerifyOtpWhatsappState.success() = _Success;
  const factory RegisterVerifyOtpWhatsappState.failed(String message) = _Failed;
}
