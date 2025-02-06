part of 'bpjs_transaction_bloc.dart';

@freezed
class BpjsTransactionEvent with _$BpjsTransactionEvent {
  const factory BpjsTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}