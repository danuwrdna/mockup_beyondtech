import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ppob_transaction_detail_response_model.freezed.dart';

part 'ppob_transaction_detail_response_model.g.dart';

PpobTransactionDetailResponseModel ppobTransactionDetailResponseModelFromJson(
        String str) =>
    PpobTransactionDetailResponseModel.fromJson(json.decode(str));

String ppobTransactionDetailResponseModelToJson(
        PpobTransactionDetailResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PpobTransactionDetailResponseModel
    with _$PpobTransactionDetailResponseModel {
  const factory PpobTransactionDetailResponseModel({
    @JsonKey(name: "data") required PpobTransactionDetailData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PpobTransactionDetailResponseModel;

  factory PpobTransactionDetailResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailResponseModelFromJson(json);
}

@freezed
class PpobTransactionDetailData with _$PpobTransactionDetailData {
  const factory PpobTransactionDetailData({
    @JsonKey(name: "boundary_type") required String boundaryType,
    @JsonKey(name: "created_at") required int createdAt,
    @JsonKey(name: "expired_at") required int expiredAt,
    @JsonKey(name: "formatted")
    required PpobTransactionDetailDataFormatted formatted,
    @JsonKey(name: "paid_at") required int paidAt,
    @JsonKey(name: "payment_channel")
    required PpobTransactionDetailDataPaymentChannel paymentChannel,
    @JsonKey(name: "ppob_product")
    required PpobTransactionDetailDataPpobProduct ppobProduct,
    @JsonKey(name: "rate") required PpobTransactionDetailDataRate rate,
    @JsonKey(name: "recepients")
    required List<PpobTransactionDetailDataRecipient> recipients,
    @JsonKey(name: "status_transaction") required String statusTransaction,
    @JsonKey(name: "sub_status_transaction")
    required String subStatusTransaction,
    @JsonKey(name: "total_amount") required int totalAmount,
    @JsonKey(name: "total_fee")
    required PpobTransactionDetailDataTotalFee totalFee,
    @JsonKey(name: "transaction_id") required String transactionId,
    @JsonKey(name: "transaction_ref_id") required String transactionRefId,
    @JsonKey(name: "transaction_title") required String transactionTitle,
    @JsonKey(name: "transaction_type") required String transactionType,
    @JsonKey(name: "unique_code") required int uniqueCode,
    @JsonKey(name: "updated_at") required int updatedAt,
  }) = _PpobTransactionDetailData;

  factory PpobTransactionDetailData.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataFromJson(json);
}

@freezed
class PpobTransactionDetailDataFormatted
    with _$PpobTransactionDetailDataFormatted {
  const factory PpobTransactionDetailDataFormatted({
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "total_amount") required String totalAmount,
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "unique_code") required String uniqueCode,
  }) = _PpobTransactionDetailDataFormatted;

  factory PpobTransactionDetailDataFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataFormattedFromJson(json);
}

@freezed
class PpobTransactionDetailDataPaymentChannel
    with _$PpobTransactionDetailDataPaymentChannel {
  const factory PpobTransactionDetailDataPaymentChannel({
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "method") required String method,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "pay_code") required String payCode,
    @JsonKey(name: "qr_content") required String qrContent,
    @JsonKey(name: "qr_image") required String qrImage,
  }) = _PpobTransactionDetailDataPaymentChannel;

  factory PpobTransactionDetailDataPaymentChannel.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataPaymentChannelFromJson(json);
}

@freezed
class PpobTransactionDetailDataPpobProduct
    with _$PpobTransactionDetailDataPpobProduct {
  const factory PpobTransactionDetailDataPpobProduct({
    @JsonKey(name: "desc") required PpobProductDesc desc,
    @JsonKey(name: "formatted") required dynamic formatted,
    @JsonKey(name: "product_name") required String productName,
    @JsonKey(name: "product_number") required String productNumber,
    @JsonKey(name: "selling_price") required int sellingPrice,
    @JsonKey(name: "serial_number") required String serialNumber,
  }) = _PpobTransactionDetailDataPpobProduct;

  factory PpobTransactionDetailDataPpobProduct.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataPpobProductFromJson(json);
}

@freezed
class PpobProductDesc with _$PpobProductDesc {
  const factory PpobProductDesc({
    @JsonKey(name: "alamat") required String alamat,
    @JsonKey(name: "biaya_admin_stnk") required String biayaAdminStnk,
    @JsonKey(name: "biaya_admin_tnkb") required String biayaAdminTnkb,
    @JsonKey(name: "biaya_denda_bbn") required String biayaDendaBbn,
    @JsonKey(name: "biaya_denda_pkb") required String biayaDendaPkb,
    @JsonKey(name: "biaya_denda_swd") required String biayaDendaSwd,
    @JsonKey(name: "biaya_pajak_progresif") required String biayaPajakProgresif,
    @JsonKey(name: "biaya_parkir_pokok") required String biayaParkirPokok,
    @JsonKey(name: "biaya_pokok_bbn") required String biayaPokokBbn,
    @JsonKey(name: "biaya_pokok_pkb") required String biayaPokokPkb,
    @JsonKey(name: "biaya_pokok_swd") required String biayaPokokSwd,
    @JsonKey(name: "daya") required int daya,
    @JsonKey(name: "detail") required dynamic detail,
    @JsonKey(name: "item_name") required String itemName,
    @JsonKey(name: "jatuh_temp") required String jatuhTemp,
    @JsonKey(name: "jht") required int jht,
    @JsonKey(name: "jkk") required int jkk,
    @JsonKey(name: "jkm") required int jkm,
    @JsonKey(name: "jpk") required int jpk,
    @JsonKey(name: "jpn") required int jpn,
    @JsonKey(name: "jumlah_peserta") required String jumlahPeserta,
    @JsonKey(name: "kab_kota") required String kabKota,
    @JsonKey(name: "kantor_cabang") required String kantorCabang,
    @JsonKey(name: "kecamatan") required String kecamatan,
    @JsonKey(name: "kelurahan") required String kelurahan,
    @JsonKey(name: "kode_divisi") required String kodeDivisi,
    @JsonKey(name: "kode_iuran") required String kodeIuran,
    @JsonKey(name: "kode_kab_kota") required String kodeKabKota,
    @JsonKey(name: "kode_program") required String kodeProgram,
    @JsonKey(name: "lembar_tagihan") required int lembarTagihan,
    @JsonKey(name: "luas_gedung") required String luasGedung,
    @JsonKey(name: "luas_tanah") required String luasTanah,
    @JsonKey(name: "merek_kb") required String merekKb,
    @JsonKey(name: "milik_kenama") required String milikKenama,
    @JsonKey(name: "model_kb") required String modelKb,
    @JsonKey(name: "no_pol") required String noPol,
    @JsonKey(name: "no_rangka") required String noRangka,
    @JsonKey(name: "no_registrasi") required String noRegistrasi,
    @JsonKey(name: "nomor_identitas") required String nomorIdentitas,
    @JsonKey(name: "nomor_mesin") required String nomorMesin,
    @JsonKey(name: "nomor_polisi") required String nomorPolisi,
    @JsonKey(name: "nomor_rangka") required String nomorRangka,
    @JsonKey(name: "npp") required String npp,
    @JsonKey(name: "tahun_buatan") required String tahunBuatan,
    @JsonKey(name: "tahun_pajak") required String tahunPajak,
    @JsonKey(name: "tanggal_registrasi") required String tanggalRegistrasi,
    @JsonKey(name: "tarif") required String tarif,
    @JsonKey(name: "tenor") required String tenor,
    @JsonKey(name: "tgl_akhir_pajak_baru") required String tglAkhirPajakBaru,
    @JsonKey(name: "tgl_efektif") required String tglEfektif,
    @JsonKey(name: "tgl_expired") required String tglExpired,
    @JsonKey(name: "transaksi") required String transaksi,
  }) = _PpobProductDesc;

  factory PpobProductDesc.fromJson(Map<String, dynamic> json) =>
      _$PpobProductDescFromJson(json);
}

@freezed
class PpobTransactionDetailDataRate with _$PpobTransactionDetailDataRate {
  const factory PpobTransactionDetailDataRate({
    @JsonKey(name: "formatted") required dynamic formatted,
    @JsonKey(name: "fx_rate") required int fxPpobTransactionDetailDataRate,
  }) = _PpobTransactionDetailDataRate;

  factory PpobTransactionDetailDataRate.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataRateFromJson(json);
}

@freezed
class PpobTransactionDetailDataRecipient
    with _$PpobTransactionDetailDataRecipient {
  const factory PpobTransactionDetailDataRecipient({
    @JsonKey(name: "account_code") required String accountCode,
    @JsonKey(name: "account_name") required String accountName,
    @JsonKey(name: "bank_code") required String bankCode,
    @JsonKey(name: "bank_name") required String bankName,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "formatted") required dynamic formatted,
    @JsonKey(name: "icon_url") required String iconUrl,
    @JsonKey(name: "nominal") required int nominal,
    @JsonKey(name: "note") required String note,
    @JsonKey(name: "receive_currency_type") required String receiveCurrencyType,
    @JsonKey(name: "receive_nominal") required int receiveNominal,
  }) = _PpobTransactionDetailDataRecipient;

  factory PpobTransactionDetailDataRecipient.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataRecipientFromJson(json);
}

@freezed
class PpobTransactionDetailDataTotalFee
    with _$PpobTransactionDetailDataTotalFee {
  const factory PpobTransactionDetailDataTotalFee({
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "feature_fee") required int featureFee,
    @JsonKey(name: "is_feature_free") required bool isFeatureFree,
    @JsonKey(name: "is_free") required bool isFree,
    @JsonKey(name: "is_payment_channel_free")
    required bool isPaymentChannelFree,
    @JsonKey(name: "payment_channel_fee") required int paymentChannelFee,
  }) = _PpobTransactionDetailDataTotalFee;

  factory PpobTransactionDetailDataTotalFee.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionDetailDataTotalFeeFromJson(json);
}
