part of 'change_password_verify_otp_sms_bloc.dart';

@freezed
class ChangePasswordVerifyOtpSmsState with _$ChangePasswordVerifyOtpSmsState {
  const factory ChangePasswordVerifyOtpSmsState.initial() = _Initial;
  const factory ChangePasswordVerifyOtpSmsState.loading() = _Loading;
  const factory ChangePasswordVerifyOtpSmsState.success() = _Success;
  const factory ChangePasswordVerifyOtpSmsState.failed(String message) = _Failed;
}
