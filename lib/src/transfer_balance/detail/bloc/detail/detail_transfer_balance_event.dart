part of 'detail_transfer_balance_bloc.dart';

@freezed
class DetailTransferBalanceEvent with _$DetailTransferBalanceEvent {
  const factory DetailTransferBalanceEvent.getTransferBalanceDetail(
    String paymentCode,
    RecipientPayloadItemModel recipientPayload,
  ) = _GetTransferDetail;
}
