part of 'single_transfer_save_recipient_bloc.dart';

@freezed
class SingleTransferSaveRecipientEvent with _$SingleTransferSaveRecipientEvent {
  const factory SingleTransferSaveRecipientEvent.saveRecipient(
    String bankCode,
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  ) = _SaveRecipient;
}
