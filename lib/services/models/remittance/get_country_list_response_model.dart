import 'dart:convert';

GetCountryListResponseModel getCountryListResponseModelFromJson(String str) => GetCountryListResponseModel.fromJson(json.decode(str));

String getCountryListResponseModelToJson(GetCountryListResponseModel data) => json.encode(data.toJson());

class GetCountryListResponseModel {
  String? statusCode;
  String? message;
  List<GetCountryListDataItem>? data;

  GetCountryListResponseModel({
    this.statusCode,
    this.message,
    this.data,
  });

  factory GetCountryListResponseModel.fromJson(Map<String, dynamic> json) => GetCountryListResponseModel(
    statusCode: json["status_code"],
    message: json["message"],
    data: json["data"] == null ? [] : List<GetCountryListDataItem>.from(json["data"]!.map((x) => GetCountryListDataItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class GetCountryListDataItem {
  String? countryCodeIso3;
  String? countryCodeIso2;
  String? countryName;
  String? currencyCode;
  bool? isSendActive;
  bool? isReceiveActive;
  bool? indicateRateActive;
  bool? isActive;
  List<String>? sendCurrency;
  List<String>? receiveCurrencies;
  List<String>? phoneDials;
  List<GetCountryListDataItemSubCountry>? subCountry;

  GetCountryListDataItem({
    this.countryCodeIso3,
    this.countryCodeIso2,
    this.countryName,
    this.currencyCode,
    this.isSendActive,
    this.isReceiveActive,
    this.indicateRateActive,
    this.isActive,
    this.sendCurrency,
    this.receiveCurrencies,
    this.phoneDials,
    this.subCountry,
  });

  factory GetCountryListDataItem.fromJson(Map<String, dynamic> json) => GetCountryListDataItem(
    countryCodeIso3: json["country_code_iso3"],
    countryCodeIso2: json["country_code_iso2"],
    countryName: json["country_name"],
    currencyCode: json["currency_code"],
    isSendActive: json["is_send_active"],
    isReceiveActive: json["is_receive_active"],
    indicateRateActive: json["indicate_rate_active"],
    isActive: json["is_active"],
    sendCurrency: json["send_currency"] == null ? [] : List<String>.from(json["send_currency"]!.map((x) => x)),
    receiveCurrencies: json["receive_currencies"] == null ? [] : List<String>.from(json["receive_currencies"]!.map((x) => x)),
    phoneDials: json["phone_dials"] == null ? [] : List<String>.from(json["phone_dials"]!.map((x) => x)),
    subCountry: json["sub_country"] == null ? [] : List<GetCountryListDataItemSubCountry>.from(json["sub_country"]!.map((x) => GetCountryListDataItemSubCountry.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "country_code_iso3": countryCodeIso3,
    "country_code_iso2": countryCodeIso2,
    "country_name": countryName,
    "currency_code": currencyCode,
    "is_send_active": isSendActive,
    "is_receive_active": isReceiveActive,
    "indicate_rate_active": indicateRateActive,
    "is_active": isActive,
    "send_currency": sendCurrency == null ? [] : List<dynamic>.from(sendCurrency!.map((x) => x)),
    "receive_currencies": receiveCurrencies == null ? [] : List<dynamic>.from(receiveCurrencies!.map((x) => x)),
    "phone_dials": phoneDials == null ? [] : List<dynamic>.from(phoneDials!.map((x) => x)),
    "sub_country": subCountry == null ? [] : List<dynamic>.from(subCountry!.map((x) => x.toJson())),
  };
}

class GetCountryListDataItemSubCountry {
  String? codeName;
  String? name;

  GetCountryListDataItemSubCountry({
    this.codeName,
    this.name,
  });

  factory GetCountryListDataItemSubCountry.fromJson(Map<String, dynamic> json) => GetCountryListDataItemSubCountry(
    codeName: json["code_name"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code_name": codeName,
    "name": name,
  };
}