part of 'change_password_send_otp_whatsapp_bloc.dart';

@freezed
class ChangePasswordSendOtpWhatsappState with _$ChangePasswordSendOtpWhatsappState {
  const factory ChangePasswordSendOtpWhatsappState.initial() = _Initial;
  const factory ChangePasswordSendOtpWhatsappState.loading() = _Loading;
  const factory ChangePasswordSendOtpWhatsappState.success() = _Success;
  const factory ChangePasswordSendOtpWhatsappState.failed(String message) = _Failed;
}
