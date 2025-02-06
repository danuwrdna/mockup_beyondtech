part of 'multi_transfer_save_recipient_bloc.dart';

@freezed
class MultiTransferSaveRecipientState with _$MultiTransferSaveRecipientState {
  const factory MultiTransferSaveRecipientState.initial() = _Initial;
  const factory MultiTransferSaveRecipientState.loading() = _Loading;
  const factory MultiTransferSaveRecipientState.success(SaveRecipientResponseModel data) = _Success;
  const factory MultiTransferSaveRecipientState.failed(String message) = _Failed;
}
