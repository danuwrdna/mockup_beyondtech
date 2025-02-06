// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_reset_validation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenResetValidationResponseImpl _$$TokenResetValidationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenResetValidationResponseImpl(
      data: TokenResetValidationData.fromJson(
          json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$$TokenResetValidationResponseImplToJson(
        _$TokenResetValidationResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$TokenResetValidationDataImpl _$$TokenResetValidationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenResetValidationDataImpl(
      statusCode: json['StatusCode'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$TokenResetValidationDataImplToJson(
        _$TokenResetValidationDataImpl instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'message': instance.message,
    };
