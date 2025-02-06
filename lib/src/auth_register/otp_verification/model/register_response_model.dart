import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) => RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) => json.encode(data.toJson());

class RegisterResponseModel {
  String? message;
  String? statusCode;
  String? token;
  String? username;

  RegisterResponseModel({
    this.message,
    this.statusCode,
    this.token,
    this.username,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => RegisterResponseModel(
    message: json["message"],
    statusCode: json["statusCode"],
    token: json["token"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "statusCode": statusCode,
    "token": token,
    "username": username,
  };
}
