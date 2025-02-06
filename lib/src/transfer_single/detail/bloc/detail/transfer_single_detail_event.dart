part of 'transfer_single_detail_bloc.dart';

@freezed
class TransferSingleDetailEvent with _$TransferSingleDetailEvent {
  const factory TransferSingleDetailEvent.getTransferDetail(
    String paymentCode,
    RecipientPayloadItemModel recipientPayload,
  ) = _GetTransferDetail;
}
