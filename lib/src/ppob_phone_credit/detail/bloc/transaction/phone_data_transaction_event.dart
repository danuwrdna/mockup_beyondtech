part of 'phone_data_transaction_bloc.dart';

@freezed
class PhoneDataTransactionEvent with _$PhoneDataTransactionEvent {
  const factory PhoneDataTransactionEvent.transaction({
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  }) = _Transaction;
}
 


 