// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifyInfoResponseImpl _$$NotifyInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotifyInfoResponseImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: NotifyInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotifyInfoResponseImplToJson(
        _$NotifyInfoResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$NotifyInfoDataImpl _$$NotifyInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$NotifyInfoDataImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotifyInfoDataImplToJson(
        _$NotifyInfoDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      title: json['title'] as String,
      phoneNumber: json['phoneNumber'] as String,
      message: json['message'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'phoneNumber': instance.phoneNumber,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
