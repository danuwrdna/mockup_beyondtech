// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppob_package_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PpobPackageResponseModelImpl _$$PpobPackageResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobPackageResponseModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => PpobPackageDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      statusCode: json['status_code'] as String,
    );

Map<String, dynamic> _$$PpobPackageResponseModelImplToJson(
        _$PpobPackageResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PpobPackageDataItemImpl _$$PpobPackageDataItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobPackageDataItemImpl(
      denominationList: (json['denom_list'] as List<dynamic>?)
          ?.map((e) => PpobPackageDataItemDenominationList.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      iconUrl: json['icon_url'] as String,
      id: json['id'] as String,
      packageName: json['package_name'] as String,
      packageType: json['package_type'] as String,
      sort: (json['sort'] as num).toInt(),
    );

Map<String, dynamic> _$$PpobPackageDataItemImplToJson(
        _$PpobPackageDataItemImpl instance) =>
    <String, dynamic>{
      'denom_list': instance.denominationList,
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'package_name': instance.packageName,
      'package_type': instance.packageType,
      'sort': instance.sort,
    };

_$PpobPackageDataItemDenominationListImpl
    _$$PpobPackageDataItemDenominationListImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobPackageDataItemDenominationListImpl(
          formatted: PpobPackageDataItemPriceFormatted.fromJson(
              json['formatted'] as Map<String, dynamic>),
          id: json['id'] as String,
          name: json['name'] as String,
          omitEmpty: json['omitempty'] as String,
          originalPrice: (json['originalPrice'] as num).toInt(),
          price: (json['price'] as num).toInt(),
        );

Map<String, dynamic> _$$PpobPackageDataItemDenominationListImplToJson(
        _$PpobPackageDataItemDenominationListImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'id': instance.id,
      'name': instance.name,
      'omitempty': instance.omitEmpty,
      'originalPrice': instance.originalPrice,
      'price': instance.price,
    };

_$PpobPackageDataItemPriceFormattedImpl
    _$$PpobPackageDataItemPriceFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobPackageDataItemPriceFormattedImpl(
          price: json['price'] as String,
        );

Map<String, dynamic> _$$PpobPackageDataItemPriceFormattedImplToJson(
        _$PpobPackageDataItemPriceFormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
