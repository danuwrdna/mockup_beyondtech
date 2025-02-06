// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_and_condition_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermAndConditionResponseModelImpl
    _$$TermAndConditionResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$TermAndConditionResponseModelImpl(
          data: TermAndConditionResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['statusCode'] as String,
        );

Map<String, dynamic> _$$TermAndConditionResponseModelImplToJson(
        _$TermAndConditionResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$TermAndConditionResponseDataImpl _$$TermAndConditionResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TermAndConditionResponseDataImpl(
      statusCode: json['statusCode'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => TermAndConditionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TermAndConditionResponseDataImplToJson(
        _$TermAndConditionResponseDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$TermAndConditionDataImpl _$$TermAndConditionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TermAndConditionDataImpl(
      id: json['id'] as String?,
      category: json['category'] as String,
      title: json['title'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$TermAndConditionDataImplToJson(
        _$TermAndConditionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'title': instance.title,
      'banner': instance.banner,
    };
