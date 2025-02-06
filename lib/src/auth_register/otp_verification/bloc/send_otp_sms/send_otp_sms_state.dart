part of 'send_otp_sms_bloc.dart';

@freezed
class SendOtpSmsState with _$SendOtpSmsState {
  const factory SendOtpSmsState.initial() = _Initial;
  const factory SendOtpSmsState.loading() = _Loading;
  const factory SendOtpSmsState.success() = _Success;
  const factory SendOtpSmsState.failed(String message) = _Failed;
}
