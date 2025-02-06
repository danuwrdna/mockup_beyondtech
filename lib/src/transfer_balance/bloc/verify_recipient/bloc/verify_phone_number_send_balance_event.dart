part of 'verify_phone_number_send_balance_bloc.dart';

@freezed
class VerifyPhoneNumberSendBalanceEvent with _$VerifyPhoneNumberSendBalanceEvent {
  const factory VerifyPhoneNumberSendBalanceEvent.verifyPhoneBalance(String accountNumber) = _VerifyPhoneBalance;
}