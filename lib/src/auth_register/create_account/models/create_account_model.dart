class CreateAccountModel {
  final String email;
  final String username;
  final String password;
  final String phoneNumber;
  final String? pin;
  final String? referralCode;

  CreateAccountModel({
    required this.email,
    required this.username,
    required this.password,
    required this.phoneNumber,
    required this.pin,
    required this.referralCode,
  });
}
