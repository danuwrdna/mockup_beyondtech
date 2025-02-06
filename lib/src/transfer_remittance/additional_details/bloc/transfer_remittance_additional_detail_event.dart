part of 'transfer_remittance_additional_detail_bloc.dart';

@freezed
class TransferRemittanceAdditionalDetailEvent
    with _$TransferRemittanceAdditionalDetailEvent {
  const factory TransferRemittanceAdditionalDetailEvent.getEnumeration(
      String destination_country_code) = _GetEnumeration;
}
