part of 'id_card_verification_phone_number_bloc.dart';

@freezed
class IdCardVerificationPhoneNumberEvent with _$IdCardVerificationPhoneNumberEvent {
  const factory IdCardVerificationPhoneNumberEvent.getPhoneNumber() = _GetPhoneNumber;
}
