// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_remittance_additional_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferRemittanceAdditionalResponseImpl
    _$$TransferRemittanceAdditionalResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$TransferRemittanceAdditionalResponseImpl(
          statusCode: json['status_code'] as String?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => TransferRemittanceAdditionalModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TransferRemittanceAdditionalResponseImplToJson(
        _$TransferRemittanceAdditionalResponseImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$TransferRemittanceAdditionalModelImpl
    _$$TransferRemittanceAdditionalModelImplFromJson(
            Map<String, dynamic> json) =>
        _$TransferRemittanceAdditionalModelImpl(
          name: json['name'] as String?,
          items: (json['data_enumeration_item'] as List<dynamic>?)
              ?.map((e) => OccupationItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TransferRemittanceAdditionalModelImplToJson(
        _$TransferRemittanceAdditionalModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data_enumeration_item': instance.items,
    };

_$OccupationItemImpl _$$OccupationItemImplFromJson(Map<String, dynamic> json) =>
    _$OccupationItemImpl(
      value: json['value'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$OccupationItemImplToJson(
        _$OccupationItemImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };
