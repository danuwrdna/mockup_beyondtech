// import 'dart:convert';

// BalanceResponseModel balanceResponseModelFromJson(String str) => BalanceResponseModel.fromJson(json.decode(str));

// String balanceResponseModelToJson(BalanceResponseModel data) => json.encode(data.toJson());

// class BalanceResponseModel {
//   BalanceResponseModelData? data;

//   BalanceResponseModel({
//     this.data,
//   });

//   factory BalanceResponseModel.fromJson(Map<String, dynamic> json) => BalanceResponseModel(
//     data: BalanceResponseModelData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "data": data?.toJson(),
//   };
// }

// class BalanceResponseModelData {
//   String? statusCode;
//   String? message;
//   BalanceData? data;

//   BalanceResponseModelData({
//     this.statusCode,
//     this.message,
//     this.data,
//   });

//   factory BalanceResponseModelData.fromJson(Map<String, dynamic> json) => BalanceResponseModelData(
//     statusCode: json["statusCode"],
//     message: json["message"],
//     data: BalanceData.fromJson(json["data"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "statusCode": statusCode,
//     "message": message,
//     "data": data?.toJson(),
//   };
// }

// class BalanceData {
//   String? balance;
//   String? point;

//   BalanceData({
//     this.balance,
//     this.point,
//   });

//   factory BalanceData.fromJson(Map<String, dynamic> json) => BalanceData(
//     balance: json["balance"],
//     point: json["point"],
//   );

//   Map<String, dynamic> toJson() => {
//     "balance": balance,
//     "point": point,
//   };
// }
