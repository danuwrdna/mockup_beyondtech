part of 'multi_transfer_verify_recipient_bloc.dart';

@freezed
class MultiTransferVerifyRecipientState with _$MultiTransferVerifyRecipientState {
  const factory MultiTransferVerifyRecipientState.initial() = _Initial;
  const factory MultiTransferVerifyRecipientState.loading() = _Loading;
  const factory MultiTransferVerifyRecipientState.success(VerifyRecipientResponseModel data) = _Success;
  const factory MultiTransferVerifyRecipientState.failed(String message) = _Failed;
}
