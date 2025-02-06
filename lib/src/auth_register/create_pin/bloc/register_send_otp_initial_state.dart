part of 'register_send_otp_initial_bloc.dart';

@freezed
class RegisterSendOtpInitialState with _$RegisterSendOtpInitialState {
  const factory RegisterSendOtpInitialState.initial() = _Initial;
  const factory RegisterSendOtpInitialState.loading() = _Loading;
  const factory RegisterSendOtpInitialState.success() = _Success;
  const factory RegisterSendOtpInitialState.failed(String message) = _Failed;
}
