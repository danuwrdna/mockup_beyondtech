// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helpdesk_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HelpdeskResponseModelImpl _$$HelpdeskResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HelpdeskResponseModelImpl(
      data: HelpdeskResponseData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$$HelpdeskResponseModelImplToJson(
        _$HelpdeskResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$HelpdeskResponseDataImpl _$$HelpdeskResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HelpdeskResponseDataImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => HelpdeskDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HelpdeskResponseDataImplToJson(
        _$HelpdeskResponseDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$HelpdeskDataItemImpl _$$HelpdeskDataItemImplFromJson(
        Map<String, dynamic> json) =>
    _$HelpdeskDataItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$HelpdeskDataItemImplToJson(
        _$HelpdeskDataItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'link': instance.link,
    };
