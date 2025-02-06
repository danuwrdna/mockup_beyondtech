enum VerificationOption {
  ktp("ktp", "KTP", "assets/icons/ic_id_card.png"),
  passport("passport", "Passport", "assets/icons/ic_passport.png");

  final String code;
  final String label;
  final String image;

  const VerificationOption(this.code, this.label, this.image);
}