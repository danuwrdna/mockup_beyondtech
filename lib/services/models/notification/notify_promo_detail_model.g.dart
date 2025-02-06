// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_promo_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifyPromoDetailModelImpl _$$NotifyPromoDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotifyPromoDetailModelImpl(
      data: json['data'] == null
          ? null
          : NotifyPromoDetailModelData.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$$NotifyPromoDetailModelImplToJson(
        _$NotifyPromoDetailModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$NotifyPromoDetailModelDataImpl _$$NotifyPromoDetailModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotifyPromoDetailModelDataImpl(
      statusCode: json['statusCode'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotifyPromoDetailModelDataImplToJson(
        _$NotifyPromoDetailModelDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      title: json['title'] as String?,
      intro: json['intro'] as String?,
      howToClaim: json['howToClaim'] as String?,
      termAndCondition: json['termAndCondition'] as String?,
      conclusion: json['conclusion'] as String?,
      url: json['url'] as String?,
      expired: json['expired'] == null
          ? null
          : DateTime.parse(json['expired'] as String),
      time:
          json['Time'] == null ? null : DateTime.parse(json['Time'] as String),
      category: json['category'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'intro': instance.intro,
      'howToClaim': instance.howToClaim,
      'termAndCondition': instance.termAndCondition,
      'conclusion': instance.conclusion,
      'url': instance.url,
      'expired': instance.expired?.toIso8601String(),
      'Time': instance.time?.toIso8601String(),
      'category': instance.category,
      'banner': instance.banner,
    };
