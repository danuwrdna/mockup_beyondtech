part of 'change_pin_verify_otp_sms_bloc.dart';

@freezed
class ChangePinVerifyOtpSmsState with _$ChangePinVerifyOtpSmsState {
  const factory ChangePinVerifyOtpSmsState.initial() = _Initial;
  const factory ChangePinVerifyOtpSmsState.loading() = _Loading;
  const factory ChangePinVerifyOtpSmsState.success() = _Success;
  const factory ChangePinVerifyOtpSmsState.failed(String message) = _Failed;
}
