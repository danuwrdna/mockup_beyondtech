// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_inbox_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InboxResponseImpl _$$InboxResponseImplFromJson(Map<String, dynamic> json) =>
    _$InboxResponseImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: InboxData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InboxResponseImplToJson(_$InboxResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$InboxDataImpl _$$InboxDataImplFromJson(Map<String, dynamic> json) =>
    _$InboxDataImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => InboxItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InboxDataImplToJson(_$InboxDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$InboxItemImpl _$$InboxItemImplFromJson(Map<String, dynamic> json) =>
    _$InboxItemImpl(
      title: json['title'] as String,
      message: json['message'] as String,
      url: json['url'] as String,
      createdAt: json['createdAt'] as String,
      banner: json['banner'] as String,
    );

Map<String, dynamic> _$$InboxItemImplToJson(_$InboxItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'banner': instance.banner,
    };
