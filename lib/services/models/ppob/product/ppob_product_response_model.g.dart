// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppob_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PpobProductResponseModelImpl _$$PpobProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobProductResponseModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => PpobProductDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      statusCode: json['status_code'] as String,
    );

Map<String, dynamic> _$$PpobProductResponseModelImplToJson(
        _$PpobProductResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PpobProductDataItemImpl _$$PpobProductDataItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobProductDataItemImpl(
      iconUrl: json['icon_url'] as String,
      inputFieldName: json['input_field_name'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      sort: (json['sort'] as num).toInt(),
    );

Map<String, dynamic> _$$PpobProductDataItemImplToJson(
        _$PpobProductDataItemImpl instance) =>
    <String, dynamic>{
      'icon_url': instance.iconUrl,
      'input_field_name': instance.inputFieldName,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'sort': instance.sort,
    };
