// import 'dart:convert';

// UserValidationResponseModel userValidationResponseModelFromJson(String str) => UserValidationResponseModel.fromJson(json.decode(str));

// String userValidationResponseModelToJson(UserValidationResponseModel data) => json.encode(data.toJson());

// class UserValidationResponseModel {
//   UserValidationResponseModelData? data;

//   UserValidationResponseModel({
//     this.data,
//   });

//   factory UserValidationResponseModel.fromJson(Map<String, dynamic> json) => UserValidationResponseModel(
//     data: UserValidationResponseModelData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "data": data?.toJson(),
//   };
// }

// class UserValidationResponseModelData {
//   String? statusCode;
//   String? message;
//   UserValidationData? data;

//   UserValidationResponseModelData({
//     this.statusCode,
//     this.message,
//     this.data,
//   });

//   factory UserValidationResponseModelData.fromJson(Map<String, dynamic> json) => UserValidationResponseModelData(
//     statusCode: json["statusCode"],
//     message: json["message"],
//     data: UserValidationData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "statusCode": statusCode,
//     "message": message,
//     "data": data?.toJson(),
//   };
// }

// class UserValidationData {
//   String? phoneNumberValidation;
//   String? faceIdentityValidation;
//   String? identityValidation;

//   UserValidationData({
//     this.phoneNumberValidation,
//     this.faceIdentityValidation,
//     this.identityValidation,
//   });

//   factory UserValidationData.fromJson(Map<String, dynamic> json) => UserValidationData(
//     phoneNumberValidation: json["PhonenumberValidation"],
//     faceIdentityValidation: json["FaceIdentityValidation"],
//     identityValidation: json["IdentityValidation"],
//   );

//   Map<String, dynamic> toJson() => {
//     "PhonenumberValidation": phoneNumberValidation,
//     "FaceIdentityValidation": faceIdentityValidation,
//     "IdentityValidation": identityValidation,
//   };
// }