// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordResponseImpl _$$ResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseImpl(
      data: ResetPasswordData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$$ResetPasswordResponseImplToJson(
        _$ResetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$ResetPasswordDataImpl _$$ResetPasswordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordDataImpl(
      statusCode: json['StatusCode'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ResetPasswordDataImplToJson(
        _$ResetPasswordDataImpl instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'message': instance.message,
    };
