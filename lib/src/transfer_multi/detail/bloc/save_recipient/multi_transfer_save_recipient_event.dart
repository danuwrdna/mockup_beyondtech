part of 'multi_transfer_save_recipient_bloc.dart';

@freezed
class MultiTransferSaveRecipientEvent with _$MultiTransferSaveRecipientEvent {
  const factory MultiTransferSaveRecipientEvent.saveRecipient(
    String bankCode,
    String accountNumber,
    String recipientName,
  ) = _SaveRecipient;
}
