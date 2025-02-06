part of 'change_password_send_otp_sms_bloc.dart';

@freezed
class ChangePasswordSendOtpSmsState with _$ChangePasswordSendOtpSmsState {
  const factory ChangePasswordSendOtpSmsState.initial() = _Initial;
  const factory ChangePasswordSendOtpSmsState.loading() = _Loading;
  const factory ChangePasswordSendOtpSmsState.success() = _Success;
  const factory ChangePasswordSendOtpSmsState.failed(String message) = _Failed;
}
