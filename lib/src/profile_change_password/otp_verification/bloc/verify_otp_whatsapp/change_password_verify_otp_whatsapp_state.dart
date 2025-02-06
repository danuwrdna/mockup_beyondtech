part of 'change_password_verify_otp_whatsapp_bloc.dart';

@freezed
class ChangePasswordVerifyOtpWhatsappState with _$ChangePasswordVerifyOtpWhatsappState {
  const factory ChangePasswordVerifyOtpWhatsappState.initial() = _Initial;
  const factory ChangePasswordVerifyOtpWhatsappState.loading() = _Loading;
  const factory ChangePasswordVerifyOtpWhatsappState.success() = _Success;
  const factory ChangePasswordVerifyOtpWhatsappState.failed(String message) = _Failed;
}
