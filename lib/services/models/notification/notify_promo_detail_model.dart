import 'package:freezed_annotation/freezed_annotation.dart';

part 'notify_promo_detail_model.freezed.dart';
part 'notify_promo_detail_model.g.dart';

@freezed
class NotifyPromoDetailModel with _$NotifyPromoDetailModel {
  const factory NotifyPromoDetailModel({
    NotifyPromoDetailModelData? data,
    String? message,
    String? statusCode,
  }) = _NotifyPromoDetailModel;

  factory NotifyPromoDetailModel.fromJson(Map<String, dynamic> json) =>
      _$NotifyPromoDetailModelFromJson(json);
}

@freezed
class NotifyPromoDetailModelData with _$NotifyPromoDetailModelData {
  const factory NotifyPromoDetailModelData({
    String? statusCode,
    String? message,
    DataData? data,
  }) = _NotifyPromoDetailModelData;

  factory NotifyPromoDetailModelData.fromJson(Map<String, dynamic> json) =>
      _$NotifyPromoDetailModelDataFromJson(json);
}

@freezed
class DataData with _$DataData {
  const factory DataData({
    String? title,
    String? intro,
    String? howToClaim,
    String? termAndCondition,
    String? conclusion,
    String? url,
    DateTime? expired,
    @JsonKey(name: "Time") DateTime? time,
    String? category,
    String? banner,
  }) = _DataData;

  factory DataData.fromJson(Map<String, dynamic> json) =>
      _$DataDataFromJson(json);
}
