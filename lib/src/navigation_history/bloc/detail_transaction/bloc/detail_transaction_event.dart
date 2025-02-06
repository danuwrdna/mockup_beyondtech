part of 'detail_transaction_bloc.dart';

@freezed
class DetailTransactionEvent with _$DetailTransactionEvent {
  const factory DetailTransactionEvent.getDetailTransaction(
    String transactionId,
    String boundaryType,
    int createdAt
  ) = _GetDetailTransaction;
}
