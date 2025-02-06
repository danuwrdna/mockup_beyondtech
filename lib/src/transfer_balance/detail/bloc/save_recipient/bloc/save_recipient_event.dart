part of 'save_recipient_bloc.dart';

@freezed
class SaveRecipientEvent with _$SaveRecipientEvent {
  const factory SaveRecipientEvent.saveBalanceRecipient(
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  ) = _saveBalanceRecipient;
}
