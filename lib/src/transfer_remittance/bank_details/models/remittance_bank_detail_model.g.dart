// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remittance_bank_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemittanceBankDetailImpl _$$RemittanceBankDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceBankDetailImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RemittanceBankDetailImplToJson(
        _$RemittanceBankDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
