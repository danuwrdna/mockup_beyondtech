class BcareChatItemModel {
  final String message;
  final DateTime createdAt;
  final String fullname;
  final Enum sender;

  BcareChatItemModel({
    required this.message,
    required this.createdAt,
    required this.fullname,
    required this.sender,
  });
}
