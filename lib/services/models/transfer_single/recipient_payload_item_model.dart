class RecipientPayloadItemModel {
  final String bankCode;
  final int amount;
  final String accountNumber;
  final String? note;
  bool isSave;
  final String? recipientName;

  RecipientPayloadItemModel({
    required this.bankCode,
    required this.amount,
    required this.accountNumber,
    this.note,
    this.isSave = true,
    this.recipientName,
  });
}
