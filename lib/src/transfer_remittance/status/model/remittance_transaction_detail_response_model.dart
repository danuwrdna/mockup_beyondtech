import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'remittance_transaction_detail_response_model.freezed.dart';

part 'remittance_transaction_detail_response_model.g.dart';

RemittanceTransactionDetailResponseModel
    remittanceTransactionDetailResponseModelFromJson(String str) =>
        RemittanceTransactionDetailResponseModel.fromJson(json.decode(str));

String remittanceTransactionDetailResponseModelToJson(
        RemittanceTransactionDetailResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RemittanceTransactionDetailResponseModel
    with _$RemittanceTransactionDetailResponseModel {
  const factory RemittanceTransactionDetailResponseModel({
    @JsonKey(name: "data") required RemittanceTransactionDetailData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _RemittanceTransactionDetailResponseModel;

  factory RemittanceTransactionDetailResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailResponseModelFromJson(json);
}

@freezed
class RemittanceTransactionDetailData with _$RemittanceTransactionDetailData {
  const factory RemittanceTransactionDetailData({
    @JsonKey(name: "boundary_type") required String boundaryType,
    @JsonKey(name: "created_at") required int createdAt,
    @JsonKey(name: "expired_at") required int expiredAt,
    @JsonKey(name: "formatted")
    required RemittanceTransactionDetailDataFormatted formatted,
    @JsonKey(name: "paid_at") required int paidAt,
    @JsonKey(name: "payment_channel")
    required RemittanceTransactionDetailDataPaymentChannel paymentChannel,
    @JsonKey(name: "ppob_product")
    required RemittanceTransactionDetailDataPpobProduct ppobProduct,
    @JsonKey(name: "rate") required RemittanceTransactionDetailDataRate rate,
    @JsonKey(name: "recepients")
    required List<RemittanceTransactionDetailDataRecipient> recipients,
    @JsonKey(name: "status_transaction") required String statusTransaction,
    @JsonKey(name: "sub_status_transaction")
    required String subStatusTransaction,
    @JsonKey(name: "total_amount") required int totalAmount,
    @JsonKey(name: "total_fee")
    required RemittanceTransactionDetailDataTotalFee totalFee,
    @JsonKey(name: "transaction_id") required String transactionId,
    @JsonKey(name: "transaction_ref_id") required String transactionRefId,
    @JsonKey(name: "transaction_title") required String transactionTitle,
    @JsonKey(name: "transaction_type") required String transactionType,
    @JsonKey(name: "unique_code") required int uniqueCode,
    @JsonKey(name: "updated_at") required int updatedAt,
  }) = _RemittanceTransactionDetailData;

  factory RemittanceTransactionDetailData.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataFormatted
    with _$RemittanceTransactionDetailDataFormatted {
  const factory RemittanceTransactionDetailDataFormatted({
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "total_amount") required String totalAmount,
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "unique_code") required String uniqueCode,
  }) = _RemittanceTransactionDetailDataFormatted;

  factory RemittanceTransactionDetailDataFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataFormattedFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataPaymentChannel
    with _$RemittanceTransactionDetailDataPaymentChannel {
  const factory RemittanceTransactionDetailDataPaymentChannel({
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "method") required String method,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "pay_code") required String payCode,
    @JsonKey(name: "qr_content") required String qrContent,
    @JsonKey(name: "qr_image") required String qrImage,
  }) = _RemittanceTransactionDetailDataPaymentChannel;

  factory RemittanceTransactionDetailDataPaymentChannel.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataPaymentChannelFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataPpobProduct
    with _$RemittanceTransactionDetailDataPpobProduct {
  const factory RemittanceTransactionDetailDataPpobProduct({
    @JsonKey(name: "desc") required RemittanceProductDesc desc,
    @JsonKey(name: "formatted") required dynamic formatted,
    @JsonKey(name: "product_name") required String productName,
    @JsonKey(name: "product_number") required String productNumber,
    @JsonKey(name: "selling_price") required int sellingPrice,
    @JsonKey(name: "serial_number") required String serialNumber,
  }) = _RemittanceTransactionDetailDataPpobProduct;

  factory RemittanceTransactionDetailDataPpobProduct.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataPpobProductFromJson(json);
}

@freezed
class RemittanceProductDesc with _$RemittanceProductDesc {
  const factory RemittanceProductDesc({
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
  }) = _RemittanceProductDesc;

  factory RemittanceProductDesc.fromJson(Map<String, dynamic> json) =>
      _$RemittanceProductDescFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataRate
    with _$RemittanceTransactionDetailDataRate {
  const factory RemittanceTransactionDetailDataRate({
    @JsonKey(name: "formatted") required dynamic formatted,
    @JsonKey(name: "fx_rate") required int fxRate,
  }) = _RemittanceTransactionDetailDataRate;

  factory RemittanceTransactionDetailDataRate.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataRateFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataRecipient
    with _$RemittanceTransactionDetailDataRecipient {
  const factory RemittanceTransactionDetailDataRecipient({
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
  }) = _RemittanceTransactionDetailDataRecipient;

  factory RemittanceTransactionDetailDataRecipient.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataRecipientFromJson(json);
}

@freezed
class RemittanceTransactionDetailDataTotalFee
    with _$RemittanceTransactionDetailDataTotalFee {
  const factory RemittanceTransactionDetailDataTotalFee({
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "feature_fee") required int featureFee,
    @JsonKey(name: "is_feature_free") required bool isFeatureFree,
    @JsonKey(name: "is_free") required bool isFree,
    @JsonKey(name: "is_payment_channel_free")
    required bool isPaymentChannelFree,
    @JsonKey(name: "payment_channel_fee") required int paymentChannelFee,
  }) = _RemittanceTransactionDetailDataTotalFee;

  factory RemittanceTransactionDetailDataTotalFee.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionDetailDataTotalFeeFromJson(json);
}
