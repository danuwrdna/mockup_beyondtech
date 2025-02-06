part of 'save_recipient_bloc.dart';

@freezed
class SaveRecipientState with _$SaveRecipientState {
  const factory SaveRecipientState.initial() = _Initial;
  const factory SaveRecipientState.loading() = _Loading;
  const factory SaveRecipientState.success(SaveRecipientResponseModel data) = _Success;
  const factory SaveRecipientState.failed(String message) = _Failed;
}
