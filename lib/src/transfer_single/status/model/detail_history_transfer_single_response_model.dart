import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_history_transfer_single_response_model.g.dart';
part 'detail_history_transfer_single_response_model.freezed.dart';

@freezed
class DetailHistoryTransferSingleResponse
    with _$DetailHistoryTransferSingleResponse {
  const factory DetailHistoryTransferSingleResponse({
    required String message,
    TransactionData? data,
    required String status_code,
  }) = _DetailHistoryTransferSingleResponse;

  factory DetailHistoryTransferSingleResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DetailHistoryTransferSingleResponseFromJson(json);
}

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    String? transaction_id,
    String? transaction_ref_id,
    String? transaction_title,
    String? transaction_type,
    PaymentChannel? payment_channel,
    String? status_transaction,
    String? boundary_type,
    List<Recepient>? recepients,
    PpobProduct? ppob_product,
    TotalFee? total_fee,
    int? unique_code,
    int? total_amount,
    int? expired_at,
    int? paid_at,
    int? created_at,
    int? updated_at,
    Formatted? formatted,
    Rate? rate,
    String? sub_status_transaction,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
class PaymentChannel with _$PaymentChannel {
  const factory PaymentChannel({
    String? method,
    String? name,
    String? currency_type,
    String? pay_code,
    String? qr_content,
    String? qr_image,
  }) = _PaymentChannel;

  factory PaymentChannel.fromJson(Map<String, dynamic> json) =>
      _$PaymentChannelFromJson(json);
}

@freezed
class Recepient with _$Recepient {
  const factory Recepient({
    String? bank_code,
    String? bank_name,
    String? account_name,
    String? account_code,
    int? nominal,
    String? note,
    String? currency_type,
    String? icon_url,
    String? receive_currency_type,
    int? receive_nominal,
  }) = _Recepient;

  factory Recepient.fromJson(Map<String, dynamic> json) =>
      _$RecepientFromJson(json);
}

@freezed
class PpobProduct with _$PpobProduct {
  const factory PpobProduct({
    String? product_name,
    String? product_number,
    int? selling_price,
    String? serial_number,
    PpobProductDescription? desc,
    Formatted? formatted,
  }) = _PpobProduct;

  factory PpobProduct.fromJson(Map<String, dynamic> json) =>
      _$PpobProductFromJson(json);
}

@freezed
class PpobProductDescription with _$PpobProductDescription {
  const factory PpobProductDescription({
    String? tarif,
    String? alamat,
    String? jatuh_temp,
    int? daya,
    int? lembar_tagihan,
    String? item_name,
    String? jumlah_peserta,
    String? no_rangka,
    String? no_pol,
    String? tenor,
    String? tahun_pajak,
    String? kelurahan,
    String? kecamatan,
    String? kode_kab_kota,
    String? kab_kota,
    String? luas_tanah,
    String? luas_gedung,
    String? kode_iuran,
    String? kode_program,
    int? jkk,
    int? jkm,
    int? jht,
    int? jpk,
    int? jpn,
    String? npp,
    String? kode_divisi,
    String? kantor_cabang,
    String? tgl_efektif,
    String? tgl_expired,
    String? no_registrasi,
    String? transaksi,
    String? tanggal_registrasi,
    String? nomor_identitas,
    String? nomor_rangka,
    String? nomor_mesin,
    String? nomor_polisi,
    String? milik_kenama,
    String? merek_kb,
    String? model_kb,
    String? tahun_buatan,
    String? tgl_akhir_pajak_baru,
    String? biaya_pokok_bbn,
    String? biaya_pokok_swd,
    String? biaya_pokok_pkb,
    String? biaya_denda_swd,
    String? biaya_denda_bbn,
    String? biaya_denda_pkb,
    String? biaya_admin_stnk,
    String? biaya_admin_tnkb,
    String? biaya_parkir_pokok,
    String? biaya_pajak_progresif,
    String? detail,
  }) = _PpobProductDescription;

  factory PpobProductDescription.fromJson(Map<String, dynamic> json) =>
      _$PpobProductDescriptionFromJson(json);
}

@freezed
class TotalFee with _$TotalFee {
  const factory TotalFee({
    int? amount,
    int? feature_fee,
    bool? is_feature_free,
    bool? is_free,
    bool? is_payment_channel_free,
    int? payment_channel_fee,
  }) = _TotalFee;

  factory TotalFee.fromJson(Map<String, dynamic> json) =>
      _$TotalFeeFromJson(json);
}

@freezed
class Formatted with _$Formatted {
  const factory Formatted({
    String? price,
    String? total_amount,
    String? total_fee,
    String? unique_code,
  }) = _Formatted;

  factory Formatted.fromJson(Map<String, dynamic> json) =>
      _$FormattedFromJson(json);
}

@freezed
class Rate with _$Rate {
  const factory Rate({
    Formatted? formatted,
    int? fx_rate,
  }) = _Rate;

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
}
