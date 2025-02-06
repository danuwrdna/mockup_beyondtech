part of 'e_wallet_transaction_bloc.dart';

@freezed
class EWalletTransactionEvent with _$EWalletTransactionEvent {
  const factory EWalletTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}
