// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutResponseImpl _$$LogoutResponseImplFromJson(Map<String, dynamic> json) =>
    _$LogoutResponseImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$$LogoutResponseImplToJson(
        _$LogoutResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      respStatus:
          RespStatus.fromJson(json['respStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'respStatus': instance.respStatus,
    };

_$RespStatusImpl _$$RespStatusImplFromJson(Map<String, dynamic> json) =>
    _$RespStatusImpl(
      StatusCode: json['StatusCode'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RespStatusImplToJson(_$RespStatusImpl instance) =>
    <String, dynamic>{
      'StatusCode': instance.StatusCode,
      'message': instance.message,
    };
