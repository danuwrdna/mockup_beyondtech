part of 'change_pin_send_otp_sms_bloc.dart';

@freezed
class ChangePinSendOtpSmsState with _$ChangePinSendOtpSmsState {
  const factory ChangePinSendOtpSmsState.initial() = _Initial;
  const factory ChangePinSendOtpSmsState.loading() = _Loading;
  const factory ChangePinSendOtpSmsState.success() = _Success;
  const factory ChangePinSendOtpSmsState.failed(String message) = _Failed;
}
