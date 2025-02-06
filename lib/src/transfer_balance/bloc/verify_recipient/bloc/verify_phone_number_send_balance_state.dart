part of 'verify_phone_number_send_balance_bloc.dart';

@freezed
class VerifyPhoneNumberSendBalanceState with _$VerifyPhoneNumberSendBalanceState {
  const factory VerifyPhoneNumberSendBalanceState.initial() = _Initial;
  const factory VerifyPhoneNumberSendBalanceState.loading() = _Loading;
  const factory VerifyPhoneNumberSendBalanceState.success(VerifyRecipientResponseModel data) = _Success;
  const factory VerifyPhoneNumberSendBalanceState.failed(String message) = _Failed;
}
