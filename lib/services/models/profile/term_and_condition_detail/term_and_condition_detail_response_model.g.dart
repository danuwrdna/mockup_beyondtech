// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_and_condition_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermAndConditionDetailResponseModelImpl
    _$$TermAndConditionDetailResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$TermAndConditionDetailResponseModelImpl(
          data: TermAndConditionDetailResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['statusCode'] as String,
        );

Map<String, dynamic> _$$TermAndConditionDetailResponseModelImplToJson(
        _$TermAndConditionDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

_$TermAndConditionDetailResponseDataImpl
    _$$TermAndConditionDetailResponseDataImplFromJson(
            Map<String, dynamic> json) =>
        _$TermAndConditionDetailResponseDataImpl(
          statusCode: json['statusCode'] as String,
          message: json['message'] as String,
          data: TermAndConditionDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TermAndConditionDetailResponseDataImplToJson(
        _$TermAndConditionDetailResponseDataImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$TermAndConditionDetailDataImpl _$$TermAndConditionDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TermAndConditionDetailDataImpl(
      category: json['category'] as String,
      title: json['title'] as String,
      banner: json['banner'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$TermAndConditionDetailDataImplToJson(
        _$TermAndConditionDetailDataImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'title': instance.title,
      'banner': instance.banner,
      'message': instance.message,
    };
