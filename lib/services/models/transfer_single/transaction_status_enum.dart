enum TransactionStatus {
  initiated("INITIATED"),
  paid("PAID"),
  pending("PENDING"),
  success("SUCCESS"),
  refunded("REFUNDED");

  final String value;

  const TransactionStatus(this.value);
}
