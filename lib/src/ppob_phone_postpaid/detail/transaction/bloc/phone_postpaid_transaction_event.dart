part of 'phone_postpaid_transaction_bloc.dart';

@freezed
class PhonePostpaidTransactionEvent with _$PhonePostpaidTransactionEvent {
  const factory PhonePostpaidTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}
