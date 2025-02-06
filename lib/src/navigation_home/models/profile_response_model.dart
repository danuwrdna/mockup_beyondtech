// import 'dart:convert';

// ProfileResponseModel profilePhotoResponseModelFromJson(String str) => ProfileResponseModel.fromJson(json.decode(str));

// String profilePhotoResponseModelToJson(ProfileResponseModel data) => json.encode(data.toJson());

// class ProfileResponseModel {
//   ProfileResponseModelData? data;

//   ProfileResponseModel({
//     this.data,
//   });

//   factory ProfileResponseModel.fromJson(Map<String, dynamic> json) => ProfileResponseModel(
//     data: ProfileResponseModelData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "data": data?.toJson(),
//   };
// }

// class ProfileResponseModelData {
//   String? statusCode;
//   String? message;
//   ProfileData? data;

//   ProfileResponseModelData({
//     this.statusCode,
//     this.message,
//     this.data,
//   });

//   factory ProfileResponseModelData.fromJson(Map<String, dynamic> json) => ProfileResponseModelData(
//     statusCode: json["statusCode"],
//     message: json["message"],
//     data: ProfileData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "statusCode": statusCode,
//     "message": message,
//     "data": data?.toJson(),
//   };
// }

// class ProfileData {
//   String? fullName;
//   String? imageUrl;
//   String? phoneNumber;

//   ProfileData({
//     this.fullName,
//     this.imageUrl,
//     this.phoneNumber,
//   });

//   factory ProfileData.fromJson(Map<String, dynamic> json) => ProfileData(
//     fullName: json["fullname"],
//     imageUrl: json["imageUrl"],
//     phoneNumber: json["PhoneNumber"],
//   );

//   Map<String, dynamic> toJson() => {
//     "fullname": fullName,
//     "imageUrl": imageUrl,
//     "PhoneNumber": phoneNumber,
//   };
// }
