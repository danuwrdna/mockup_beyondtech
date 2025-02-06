part of 'remittance_transaction_bloc.dart';

@freezed
class RemittanceTransactionEvent with _$RemittanceTransactionEvent {
  const factory RemittanceTransactionEvent.remittanceTransaction(
    CountryDetailModel senderCountryDetail,
    CountryDetailModel receiverCountryDetail,
    int amount,
    String serviceOptionCode,
    String serviceOptionRoutingCode,
    Map<String, dynamic> fields,
    Map<String, TextEditingController> fieldsControllers,
    String purposeOfTransaction,
    String sourceOfFunds,
    String paymentCode,
    String? pin,
    String? isBiometricValid,
  ) = _RemittanceTransaction;
}
