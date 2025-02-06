class IdCardVerificationDataModel {
  final String nik;
  final String fullName;
  final String gender;
  final String placeOfBirth;
  final String dateOfBirth;
  final String occupation;
  final String nationality;
  final String maritalStatus;
  final String religion;
  final String ktpCountry;
  final String ktpProvince;
  final String ktpCityRegency;
  final String ktpDistrict;
  final String ktpAddress;
  final String isCurrentAddressMatch;
  final String currentCountry;
  final String currentProvince;
  final String currentCityRegency;
  final String currentDistrict;
  final String currentAddress;

  IdCardVerificationDataModel({
    required this.nik,
    required this.fullName,
    required this.gender,
    required this.placeOfBirth,
    required this.dateOfBirth,
    required this.occupation,
    required this.nationality,
    required this.maritalStatus,
    required this.religion,
    required this.ktpCountry,
    required this.ktpProvince,
    required this.ktpCityRegency,
    required this.ktpDistrict,
    required this.ktpAddress,
    required this.isCurrentAddressMatch,
    required this.currentCountry,
    required this.currentProvince,
    required this.currentCityRegency,
    required this.currentDistrict,
    required this.currentAddress,
  });
}
