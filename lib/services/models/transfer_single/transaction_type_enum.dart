enum TransactionType {
  remittance("remmitance"),
  topUpBalance("topup_balance"),
  transferBeyond("transfer_beyond"),
  ppob("ppob"),
  transferBank("transfer_bank"),
  disbursement("disbursement");

  final String value;

  const TransactionType(this.value);
}
