part of 'internet_tv_transaction_bloc.dart';

@freezed
class InternetTvTransactionEvent with _$InternetTvTransactionEvent {
  const factory InternetTvTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}