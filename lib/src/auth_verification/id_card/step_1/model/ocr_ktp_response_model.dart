import 'dart:convert';

OcrKtpResponseModel ocrKtpResponseModelFromJson(String str) => OcrKtpResponseModel.fromJson(json.decode(str));

String ocrKtpResponseModelToJson(OcrKtpResponseModel data) => json.encode(data.toJson());

class OcrKtpResponseModel {
  OcrKtpResponseData? data;
  String? message;
  String? statusCode;

  OcrKtpResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory OcrKtpResponseModel.fromJson(Map<String, dynamic> json) => OcrKtpResponseModel(
    data: json["data"] == null ? null : OcrKtpResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class OcrKtpResponseData {
  String? address;
  String? administrativeVillage;
  String? bloodType;
  String? city;
  String? dateOfBirth;
  String? district;
  String? fullName;
  String? gender;
  String? imageQuality;
  String? maritalStatus;
  String? nationality;
  String? nik;
  String? occupation;
  String? placeOfBirth;
  String? referenceId;
  String? religion;
  String? rtRw;
  String? state;

  OcrKtpResponseData({
    this.address,
    this.administrativeVillage,
    this.bloodType,
    this.city,
    this.dateOfBirth,
    this.district,
    this.fullName,
    this.gender,
    this.imageQuality,
    this.maritalStatus,
    this.nationality,
    this.nik,
    this.occupation,
    this.placeOfBirth,
    this.referenceId,
    this.religion,
    this.rtRw,
    this.state,
  });

  factory OcrKtpResponseData.fromJson(Map<String, dynamic> json) => OcrKtpResponseData(
    address: json["address"],
    administrativeVillage: json["administrative_village"],
    bloodType: json["blood_type"],
    city: json["city"],
    dateOfBirth: json["date_of_birth"],
    district: json["district"],
    fullName: json["full_name"],
    gender: json["gender"],
    imageQuality: json["image_quality"],
    maritalStatus: json["marital_status"],
    nationality: json["nationality"],
    nik: json["nik"],
    occupation: json["occupation"],
    placeOfBirth: json["place_of_birth"],
    referenceId: json["reference_id"],
    religion: json["religion"],
    rtRw: json["rt_rw"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "administrative_village": administrativeVillage,
    "blood_type": bloodType,
    "city": city,
    "date_of_birth": dateOfBirth,
    "district": district,
    "full_name": fullName,
    "gender": gender,
    "image_quality": imageQuality,
    "marital_status": maritalStatus,
    "nationality": nationality,
    "nik": nik,
    "occupation": occupation,
    "place_of_birth": placeOfBirth,
    "reference_id": referenceId,
    "religion": religion,
    "rt_rw": rtRw,
    "state": state,
  };
}