part of 'remittance_detail_bloc.dart';

@freezed
class RemittanceDetailEvent with _$RemittanceDetailEvent {
  const factory RemittanceDetailEvent.getSenderCountryDetail(
    String senderCountryCodeIso3,
  ) = _GetSenderCountryDetail;

  const factory RemittanceDetailEvent.getReceiverCountryDetail(
    String receiverCountryCodeIso3,
  ) = _GetReceiverCountryDetail;

  const factory RemittanceDetailEvent.getRemittanceDetail(
    CountryDetailModel senderCountryDetail,
    CountryDetailModel receiverCountryDetail,
    int amount,
    String serviceOptionCode,
    String serviceOptionRoutingCode,
  ) = _GetRemittanceDetail;
}
