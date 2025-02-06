// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_profile_picture_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeProfilePictureResponseModelImpl
    _$$ChangeProfilePictureResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ChangeProfilePictureResponseModelImpl(
          data: ChangeProfilePictureResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['statusCode'] as String,
        );

Map<String, dynamic> _$$ChangeProfilePictureResponseModelImplToJson(
        _$ChangeProfilePictureResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$ChangeProfilePictureResponseDataImpl
    _$$ChangeProfilePictureResponseDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ChangeProfilePictureResponseDataImpl(
          statusCode: json['statusCode'] as String,
          message: json['message'] as String,
        );

Map<String, dynamic> _$$ChangeProfilePictureResponseDataImplToJson(
        _$ChangeProfilePictureResponseDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
