part of 'multi_transfer_verify_recipient_bloc.dart';

@freezed
class MultiTransferVerifyRecipientEvent with _$MultiTransferVerifyRecipientEvent {
  const factory MultiTransferVerifyRecipientEvent.verifyRecipient(String bankCode, String accountNumber) = _VerifyRecipient;
}
