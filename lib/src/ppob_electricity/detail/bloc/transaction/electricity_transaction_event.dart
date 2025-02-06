part of 'electricity_transaction_bloc.dart';

@freezed
class ElectricityTransactionEvent with _$ElectricityTransactionEvent {
  const factory ElectricityTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}
