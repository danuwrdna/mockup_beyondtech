part of 'multi_transfer_detail_bloc.dart';

@freezed
class MultiTransferDetailEvent with _$MultiTransferDetailEvent {
  const factory MultiTransferDetailEvent.getTransferDetail(
    String paymentCode,
    List<RecipientPayloadItemModel> recipients,
  ) = _GetTransferDetail;
}
