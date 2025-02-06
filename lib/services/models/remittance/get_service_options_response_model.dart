import 'dart:convert';

GetServiceOptionsResponseModel getServiceOptionsResponseModelFromJson(String str) => GetServiceOptionsResponseModel.fromJson(json.decode(str));

String getServiceOptionsResponseModelToJson(GetServiceOptionsResponseModel data) => json.encode(data.toJson());

class GetServiceOptionsResponseModel {
  String? statusCode;
  GetServiceOptionsResponseData? data;
  String? message;

  GetServiceOptionsResponseModel({
    this.statusCode,
    this.data,
    this.message,
  });

  factory GetServiceOptionsResponseModel.fromJson(Map<String, dynamic> json) => GetServiceOptionsResponseModel(
    statusCode: json["status_code"],
    data: json["data"] == null ? null : GetServiceOptionsResponseData.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "data": data?.toJson(),
    "message": message,
  };
}

class GetServiceOptionsResponseData {
  String? destinationCountryCode;
  List<RemittanceServiceOptionItem>? serviceOptions;

  GetServiceOptionsResponseData({
    this.destinationCountryCode,
    this.serviceOptions,
  });

  factory GetServiceOptionsResponseData.fromJson(Map<String, dynamic> json) => GetServiceOptionsResponseData(
    destinationCountryCode: json["destination_country_code"],
    serviceOptions: json["service_options"] == null ? [] : List<RemittanceServiceOptionItem>.from(json["service_options"]!.map((x) => RemittanceServiceOptionItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "destination_country_code": destinationCountryCode,
    "service_options": serviceOptions == null ? [] : List<dynamic>.from(serviceOptions!.map((x) => x.toJson())),
  };
}

class RemittanceServiceOptionItem {
  String? serviceOptionCode;
  String? destinationCurrencyCode;
  String? serviceOptionRoutingCode;
  String? serviceOptionName;
  String? serviceOptionDescription;
  String? serviceOptionCategory;
  String? serviceOptionDisplayName;
  String? localCurrency;
  bool? indicativeRateAvailable;
  List<RemittanceServiceOptionItemField>? fields;

  RemittanceServiceOptionItem({
    this.serviceOptionCode,
    this.destinationCurrencyCode,
    this.serviceOptionRoutingCode,
    this.serviceOptionName,
    this.serviceOptionDescription,
    this.serviceOptionCategory,
    this.serviceOptionDisplayName,
    this.localCurrency,
    this.indicativeRateAvailable,
    this.fields,
  });

  factory RemittanceServiceOptionItem.fromJson(Map<String, dynamic> json) => RemittanceServiceOptionItem(
    serviceOptionCode: json["service_option_code"],
    destinationCurrencyCode: json["destination_currency_code"],
    serviceOptionRoutingCode: json["service_option_routing_code"],
    serviceOptionName: json["service_option_name"],
    serviceOptionDescription: json["service_option_description"],
    serviceOptionCategory: json["service_option_category"],
    serviceOptionDisplayName: json["service_option_display_name"],
    localCurrency: json["local_currency"],
    indicativeRateAvailable: json["indicative_rate_available"],
    fields: json["fields"] == null ? [] : List<RemittanceServiceOptionItemField>.from(json["fields"]!.map((x) => RemittanceServiceOptionItemField.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "service_option_code": serviceOptionCode,
    "destination_currency_code": destinationCurrencyCode,
    "service_option_routing_code": serviceOptionRoutingCode,
    "service_option_name": serviceOptionName,
    "service_option_description": serviceOptionDescription,
    "service_option_category": serviceOptionCategory,
    "service_option_display_name": serviceOptionDisplayName,
    "local_currency": localCurrency,
    "indicative_rate_available": indicativeRateAvailable,
    "fields": fields == null ? [] : List<dynamic>.from(fields!.map((x) => x.toJson())),
  };
}

class RemittanceServiceOptionItemField {
  String? key;
  String? dataType;
  String? fieldLabel;
  bool? required;
  String? fieldMin;
  String? fieldMax;
  String? regex;
  dynamic enumerations;

  RemittanceServiceOptionItemField({
    this.key,
    this.dataType,
    this.fieldLabel,
    this.required,
    this.fieldMin,
    this.fieldMax,
    this.regex,
    this.enumerations,
  });

  factory RemittanceServiceOptionItemField.fromJson(Map<String, dynamic> json) => RemittanceServiceOptionItemField(
    key: json["key"],
    dataType: json["data_type"],
    fieldLabel: json["field_label"],
    required: json["required"],
    fieldMin: json["field_min"],
    fieldMax: json["field_max"],
    regex: json["regex"],
    enumerations: json["enumerations"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "data_type": dataType,
    "field_label": fieldLabel,
    "required": required,
    "field_min": fieldMin,
    "field_max": fieldMax,
    "regex": regex,
    "enumerations": enumerations,
  };
}
