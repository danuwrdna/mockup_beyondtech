// import 'dart:convert';

// LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

// String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

// class LoginResponseModel {
//   String? message;
//   String? statusCode;
//   String? token;

//   LoginResponseModel({
//     this.message,
//     this.statusCode,
//     this.token,
//   });

//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
//     message: json["message"],
//     statusCode: json["statusCode"],
//     token: json["token"],
//   );

//   Map<String, dynamic> toJson() => {
//     "message": message,
//     "statusCode": statusCode,
//     "token": token,
//   };
// }