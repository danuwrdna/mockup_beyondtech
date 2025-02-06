part of 'single_transfer_save_recipient_bloc.dart';

@freezed
class SingleTransferSaveRecipientState with _$SingleTransferSaveRecipientState {
  const factory SingleTransferSaveRecipientState.initial() = _Initial;
  const factory SingleTransferSaveRecipientState.loading() = _Loading;
  const factory SingleTransferSaveRecipientState.success(SaveRecipientResponseModel data) = _Success;
  const factory SingleTransferSaveRecipientState.failed(String message) = _Failed;
}
