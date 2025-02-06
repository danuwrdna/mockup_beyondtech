part of 'change_pin_send_otp_initial_bloc.dart';

@freezed
class ChangePinSendOtpInitialState with _$ChangePinSendOtpInitialState {
  const factory ChangePinSendOtpInitialState.initial() = _Initial;
  const factory ChangePinSendOtpInitialState.loading() = _Loading;
  const factory ChangePinSendOtpInitialState.success() = _Success;
  const factory ChangePinSendOtpInitialState.failed(String message) = _Failed;
}
