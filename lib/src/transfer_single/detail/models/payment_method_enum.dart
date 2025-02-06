enum PaymentMethod {
  balance("Balance"),
  bankTransfer("Bank Transfer"),
  virtualAccount("Virtual Account"),
  qris("QRIS");

  final String label;

  const PaymentMethod(this.label);
}