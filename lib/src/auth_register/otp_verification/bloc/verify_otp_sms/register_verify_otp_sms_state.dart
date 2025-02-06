part of 'register_verify_otp_sms_bloc.dart';

@freezed
class RegisterVerifyOtpSmsState with _$RegisterVerifyOtpSmsState {
  const factory RegisterVerifyOtpSmsState.initial() = _Initial;
  const factory RegisterVerifyOtpSmsState.loading() = _Loading;
  const factory RegisterVerifyOtpSmsState.success() = _Success;
  const factory RegisterVerifyOtpSmsState.failed(String message) = _Failed;
}
