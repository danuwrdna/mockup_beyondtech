import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_remittance_additional_detail_model.freezed.dart';
part 'transfer_remittance_additional_detail_model.g.dart';

@freezed
class TransferRemittanceAdditionalResponse
    with _$TransferRemittanceAdditionalResponse {
  factory TransferRemittanceAdditionalResponse({
    @JsonKey(name: 'status_code') String? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<TransferRemittanceAdditionalModel>? data,
  }) = _TransferRemittanceAdditionalResponse;

  factory TransferRemittanceAdditionalResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRemittanceAdditionalResponseFromJson(json);
}

@freezed
class TransferRemittanceAdditionalModel
    with _$TransferRemittanceAdditionalModel {
  factory TransferRemittanceAdditionalModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'data_enumeration_item') List<OccupationItem>? items,
  }) = _TransferRemittanceAdditionalModel;

  factory TransferRemittanceAdditionalModel.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRemittanceAdditionalModelFromJson(json);
}

@freezed
class OccupationItem with _$OccupationItem {
  factory OccupationItem({
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'description') String? description,
  }) = _OccupationItem;

  factory OccupationItem.fromJson(Map<String, dynamic> json) =>
      _$OccupationItemFromJson(json);
}
