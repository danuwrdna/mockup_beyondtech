class PassportVerificationDataModel {
  final String passportType;
  final String countryCode;
  final String passportNumber;
  final String fullName;
  final String gender;
  final String nationality;
  final String placeOfBirth;
  final String dateOfBirth;
  final String dateOfIssue;
  final String dateOfExpiry;
  final String placeOfIssue;
  final String currentCountry;
  final String currentProvince;
  final String currentCityRegency;
  final String currentDistrict;
  final String currentAddress;

  PassportVerificationDataModel({
    required this.passportType,
    required this.countryCode,
    required this.passportNumber,
    required this.fullName,
    required this.gender,
    required this.nationality,
    required this.placeOfBirth,
    required this.dateOfBirth,
    required this.dateOfIssue,
    required this.dateOfExpiry,
    required this.placeOfIssue,
    required this.currentCountry,
    required this.currentProvince,
    required this.currentCityRegency,
    required this.currentDistrict,
    required this.currentAddress,
  });
}
