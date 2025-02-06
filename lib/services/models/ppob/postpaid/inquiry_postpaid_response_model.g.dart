// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_postpaid_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl _$$ResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ResponseModelImpl(
      data: PostPaidData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['status_code'] as String,
    );

Map<String, dynamic> _$$ResponseModelImplToJson(_$ResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      taxDetail: TaxDetail.fromJson(json['tax_detail'] as Map<String, dynamic>),
      trxId: json['trx_id'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'tax_detail': instance.taxDetail,
      'trx_id': instance.trxId,
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      customerName: json['customer_name'] as String,
      customerNo: json['customer_no'] as String,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'customer_name': instance.customerName,
      'customer_no': instance.customerNo,
    };

_$TaxDetailImpl _$$TaxDetailImplFromJson(Map<String, dynamic> json) =>
    _$TaxDetailImpl(
      admin: (json['admin'] as num).toInt(),
      buyerSkuCode: json['buyer_sku_code'] as String,
      desc: Desc.fromJson(json['desc'] as Map<String, dynamic>),
      formatted: Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
      message: json['message'] as String,
      price: (json['price'] as num).toInt(),
      rc: json['rc'] as String,
      sellingPrice: (json['selling_price'] as num).toInt(),
      sn: json['sn'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$TaxDetailImplToJson(_$TaxDetailImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'buyer_sku_code': instance.buyerSkuCode,
      'desc': instance.desc,
      'formatted': instance.formatted,
      'message': instance.message,
      'price': instance.price,
      'rc': instance.rc,
      'selling_price': instance.sellingPrice,
      'sn': instance.sn,
      'status': instance.status,
    };

_$DescImpl _$$DescImplFromJson(Map<String, dynamic> json) => _$DescImpl(
      alamat: json['alamat'] as String,
      biayaAdminStnk: json['biaya_admin_stnk'] as String,
      biayaAdminTnkb: json['biaya_admin_tnkb'] as String,
      biayaDendaBbn: json['biaya_denda_bbn'] as String,
      biayaDendaPkb: json['biaya_denda_pkb'] as String,
      biayaDendaSwd: json['biaya_denda_swd'] as String,
      biayaPajakProgresif: json['biaya_pajak_progresif'] as String,
      biayaParkirPokok: json['biaya_parkir_pokok'] as String,
      biayaPokokBbn: json['biaya_pokok_bbn'] as String,
      biayaPokokPkb: json['biaya_pokok_pkb'] as String,
      biayaPokokSwd: json['biaya_pokok_swd'] as String,
      daya: (json['daya'] as num).toInt(),
      detail: (json['detail'] as List<dynamic>)
          .map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemName: json['item_name'] as String,
      jatuhTemp: json['jatuh_temp'] as String,
      jht: (json['jht'] as num).toInt(),
      jkk: (json['jkk'] as num).toInt(),
      jkm: (json['jkm'] as num).toInt(),
      jpk: (json['jpk'] as num).toInt(),
      jpn: (json['jpn'] as num).toInt(),
      jumlahPeserta: json['jumlah_peserta'] as String,
      kabKota: json['kab_kota'] as String,
      kantorCabang: json['kantor_cabang'] as String,
      kecamatan: json['kecamatan'] as String,
      kelurahan: json['kelurahan'] as String,
      kodeDivisi: json['kode_divisi'] as String,
      kodeIuran: json['kode_iuran'] as String,
      kodeKabKota: json['kode_kab_kota'] as String,
      kodeProgram: json['kode_program'] as String,
      lembarTagihan: (json['lembar_tagihan'] as num).toInt(),
      luasGedung: json['luas_gedung'] as String,
      luasTanah: json['luas_tanah'] as String,
      merekKb: json['merek_kb'] as String,
      milikKenama: json['milik_kenama'] as String,
      modelKb: json['model_kb'] as String,
      noPol: json['no_pol'] as String,
      noRangka: json['no_rangka'] as String,
      noRegistrasi: json['no_registrasi'] as String,
      nomorIdentitas: json['nomor_identitas'] as String,
      nomorMesin: json['nomor_mesin'] as String,
      nomorPolisi: json['nomor_polisi'] as String,
      nomorRangka: json['nomor_rangka'] as String,
      npp: json['npp'] as String,
      tahunBuatan: json['tahun_buatan'] as String,
      tahunPajak: json['tahun_pajak'] as String,
      tanggalRegistrasi: json['tanggal_registrasi'] as String,
      tarif: json['tarif'] as String,
      tenor: json['tenor'] as String,
      tglAkhirPajakBaru: json['tgl_akhir_pajak_baru'] as String,
      tglEfektif: json['tgl_efektif'] as String,
      tglExpired: json['tgl_expired'] as String,
      transaksi: json['transaksi'] as String,
    );

Map<String, dynamic> _$$DescImplToJson(_$DescImpl instance) =>
    <String, dynamic>{
      'alamat': instance.alamat,
      'biaya_admin_stnk': instance.biayaAdminStnk,
      'biaya_admin_tnkb': instance.biayaAdminTnkb,
      'biaya_denda_bbn': instance.biayaDendaBbn,
      'biaya_denda_pkb': instance.biayaDendaPkb,
      'biaya_denda_swd': instance.biayaDendaSwd,
      'biaya_pajak_progresif': instance.biayaPajakProgresif,
      'biaya_parkir_pokok': instance.biayaParkirPokok,
      'biaya_pokok_bbn': instance.biayaPokokBbn,
      'biaya_pokok_pkb': instance.biayaPokokPkb,
      'biaya_pokok_swd': instance.biayaPokokSwd,
      'daya': instance.daya,
      'detail': instance.detail,
      'item_name': instance.itemName,
      'jatuh_temp': instance.jatuhTemp,
      'jht': instance.jht,
      'jkk': instance.jkk,
      'jkm': instance.jkm,
      'jpk': instance.jpk,
      'jpn': instance.jpn,
      'jumlah_peserta': instance.jumlahPeserta,
      'kab_kota': instance.kabKota,
      'kantor_cabang': instance.kantorCabang,
      'kecamatan': instance.kecamatan,
      'kelurahan': instance.kelurahan,
      'kode_divisi': instance.kodeDivisi,
      'kode_iuran': instance.kodeIuran,
      'kode_kab_kota': instance.kodeKabKota,
      'kode_program': instance.kodeProgram,
      'lembar_tagihan': instance.lembarTagihan,
      'luas_gedung': instance.luasGedung,
      'luas_tanah': instance.luasTanah,
      'merek_kb': instance.merekKb,
      'milik_kenama': instance.milikKenama,
      'model_kb': instance.modelKb,
      'no_pol': instance.noPol,
      'no_rangka': instance.noRangka,
      'no_registrasi': instance.noRegistrasi,
      'nomor_identitas': instance.nomorIdentitas,
      'nomor_mesin': instance.nomorMesin,
      'nomor_polisi': instance.nomorPolisi,
      'nomor_rangka': instance.nomorRangka,
      'npp': instance.npp,
      'tahun_buatan': instance.tahunBuatan,
      'tahun_pajak': instance.tahunPajak,
      'tanggal_registrasi': instance.tanggalRegistrasi,
      'tarif': instance.tarif,
      'tenor': instance.tenor,
      'tgl_akhir_pajak_baru': instance.tglAkhirPajakBaru,
      'tgl_efektif': instance.tglEfektif,
      'tgl_expired': instance.tglExpired,
      'transaksi': instance.transaksi,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      admin: json['admin'] as String,
      biayaLain: json['biaya_lain'] as String,
      denda: json['denda'] as String,
      meterAkhir: json['meter_akhir'] as String,
      meterAwal: json['meter_awal'] as String,
      nilaiTagihan: json['nilai_tagihan'] as String,
      noRef: json['no_ref'] as String,
      periode: json['periode'] as String,
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'biaya_lain': instance.biayaLain,
      'denda': instance.denda,
      'meter_akhir': instance.meterAkhir,
      'meter_awal': instance.meterAwal,
      'nilai_tagihan': instance.nilaiTagihan,
      'no_ref': instance.noRef,
      'periode': instance.periode,
    };

_$FormattedImpl _$$FormattedImplFromJson(Map<String, dynamic> json) =>
    _$FormattedImpl(
      price: json['price'] as String,
    );

Map<String, dynamic> _$$FormattedImplToJson(_$FormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
