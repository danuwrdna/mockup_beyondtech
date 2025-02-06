part of 'id_card_verification_phone_number_bloc.dart';

@freezed
class IdCardVerificationPhoneNumberState with _$IdCardVerificationPhoneNumberState {
  const factory IdCardVerificationPhoneNumberState.initial() = _Initial;
  const factory IdCardVerificationPhoneNumberState.loading() = _Loading;
  const factory IdCardVerificationPhoneNumberState.success(PhoneNumberResponseModel data) = _Success;
  const factory IdCardVerificationPhoneNumberState.failed(String message) = _Failed;
}
