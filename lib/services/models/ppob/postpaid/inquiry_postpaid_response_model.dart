import 'package:freezed_annotation/freezed_annotation.dart';

part 'inquiry_postpaid_response_model.freezed.dart';
part 'inquiry_postpaid_response_model.g.dart';

@freezed
class InquiryPostpaidResponseModel with _$InquiryPostpaidResponseModel {
  const factory InquiryPostpaidResponseModel({
    required PostPaidData data,
    required String message,
    @JsonKey(name: 'status_code') required String statusCode,
  }) = _ResponseModel;

  factory InquiryPostpaidResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InquiryPostpaidResponseModelFromJson(json);
}

@freezed
class PostPaidData with _$PostPaidData {
  const factory PostPaidData({
    required Customer customer,
    @JsonKey(name: 'tax_detail') required TaxDetail taxDetail,
    @JsonKey(name: 'trx_id') required String trxId,
  }) = _Data;

  factory PostPaidData.fromJson(Map<String, dynamic> json) => _$PostPaidDataFromJson(json);
}

@freezed
class Customer with _$Customer {
  const factory Customer({
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'customer_no') required String customerNo,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
class TaxDetail with _$TaxDetail {
  const factory TaxDetail({
    required int admin,
    @JsonKey(name: 'buyer_sku_code') required String buyerSkuCode,
    required Desc desc,
    required Formatted formatted,
    required String message,
    required int price,
    required String rc,
    @JsonKey(name: 'selling_price') required int sellingPrice,
    required String sn,
    required String status,
  }) = _TaxDetail;

  factory TaxDetail.fromJson(Map<String, dynamic> json) =>
      _$TaxDetailFromJson(json);
}

@freezed
class Desc with _$Desc {
  const factory Desc({
    required String alamat,
    @JsonKey(name: 'biaya_admin_stnk') required String biayaAdminStnk,
    @JsonKey(name: 'biaya_admin_tnkb') required String biayaAdminTnkb,
    @JsonKey(name: 'biaya_denda_bbn') required String biayaDendaBbn,
    @JsonKey(name: 'biaya_denda_pkb') required String biayaDendaPkb,
    @JsonKey(name: 'biaya_denda_swd') required String biayaDendaSwd,
    @JsonKey(name: 'biaya_pajak_progresif') required String biayaPajakProgresif,
    @JsonKey(name: 'biaya_parkir_pokok') required String biayaParkirPokok,
    @JsonKey(name: 'biaya_pokok_bbn') required String biayaPokokBbn,
    @JsonKey(name: 'biaya_pokok_pkb') required String biayaPokokPkb,
    @JsonKey(name: 'biaya_pokok_swd') required String biayaPokokSwd,
    required int daya,
    required List<Detail> detail,
    @JsonKey(name: 'item_name') required String itemName,
    @JsonKey(name: 'jatuh_temp') required String jatuhTemp,
    required int jht,
    required int jkk,
    required int jkm,
    required int jpk,
    required int jpn,
    @JsonKey(name: 'jumlah_peserta') required String jumlahPeserta,
    @JsonKey(name: 'kab_kota') required String kabKota,
    @JsonKey(name: 'kantor_cabang') required String kantorCabang,
    required String kecamatan,
    required String kelurahan,
    @JsonKey(name: 'kode_divisi') required String kodeDivisi,
    @JsonKey(name: 'kode_iuran') required String kodeIuran,
    @JsonKey(name: 'kode_kab_kota') required String kodeKabKota,
    @JsonKey(name: 'kode_program') required String kodeProgram,
    @JsonKey(name: 'lembar_tagihan') required int lembarTagihan,
    @JsonKey(name: 'luas_gedung') required String luasGedung,
    @JsonKey(name: 'luas_tanah') required String luasTanah,
    @JsonKey(name: 'merek_kb') required String merekKb,
    @JsonKey(name: 'milik_kenama') required String milikKenama,
    @JsonKey(name: 'model_kb') required String modelKb,
    @JsonKey(name: 'no_pol') required String noPol,
    @JsonKey(name: 'no_rangka') required String noRangka,
    @JsonKey(name: 'no_registrasi') required String noRegistrasi,
    @JsonKey(name: 'nomor_identitas') required String nomorIdentitas,
    @JsonKey(name: 'nomor_mesin') required String nomorMesin,
    @JsonKey(name: 'nomor_polisi') required String nomorPolisi,
    @JsonKey(name: 'nomor_rangka') required String nomorRangka,
    required String npp,
    @JsonKey(name: 'tahun_buatan') required String tahunBuatan,
    @JsonKey(name: 'tahun_pajak') required String tahunPajak,
    @JsonKey(name: 'tanggal_registrasi') required String tanggalRegistrasi,
    required String tarif,
    required String tenor,
    @JsonKey(name: 'tgl_akhir_pajak_baru') required String tglAkhirPajakBaru,
    @JsonKey(name: 'tgl_efektif') required String tglEfektif,
    @JsonKey(name: 'tgl_expired') required String tglExpired,
    required String transaksi,
  }) = _Desc;

  factory Desc.fromJson(Map<String, dynamic> json) => _$DescFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({
    required String admin,
    @JsonKey(name: 'biaya_lain') required String biayaLain,
    required String denda,
    @JsonKey(name: 'meter_akhir') required String meterAkhir,
    @JsonKey(name: 'meter_awal') required String meterAwal,
    @JsonKey(name: 'nilai_tagihan') required String nilaiTagihan,
    @JsonKey(name: 'no_ref') required String noRef,
    required String periode,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) =>
      _$DetailFromJson(json);
}

@freezed
class Formatted with _$Formatted {
  const factory Formatted({
    required String price,
  }) = _Formatted;

  factory Formatted.fromJson(Map<String, dynamic> json) =>
      _$FormattedFromJson(json);
}
