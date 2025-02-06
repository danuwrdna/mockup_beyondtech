// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordResponseImpl _$$ForgotPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordResponseImpl(
      data: ForgotPasswordData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$$ForgotPasswordResponseImplToJson(
        _$ForgotPasswordResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$ForgotPasswordDataImpl _$$ForgotPasswordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordDataImpl(
      statusCode: json['StatusCode'] as String,
      message: json['message'] as String,
      data: TokenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotPasswordDataImplToJson(
        _$ForgotPasswordDataImpl instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$TokenDataImpl _$$TokenDataImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$TokenDataImplToJson(_$TokenDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
