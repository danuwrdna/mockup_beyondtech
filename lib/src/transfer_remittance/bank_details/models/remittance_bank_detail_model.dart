import 'package:freezed_annotation/freezed_annotation.dart';

part 'remittance_bank_detail_model.freezed.dart';
part 'remittance_bank_detail_model.g.dart';

@Freezed()
class RemittanceBankDetail with _$RemittanceBankDetail {
  const factory RemittanceBankDetail({
    required int id,
    required String name,
    required String email,
  }) = _RemittanceBankDetail;

  factory RemittanceBankDetail.fromJson(Map<String, dynamic> json) =>
      _$RemittanceBankDetailFromJson(json);
}
