// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_history_transfer_single_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailHistoryTransferSingleResponseImpl
    _$$DetailHistoryTransferSingleResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$DetailHistoryTransferSingleResponseImpl(
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : TransactionData.fromJson(json['data'] as Map<String, dynamic>),
          status_code: json['status_code'] as String,
        );

Map<String, dynamic> _$$DetailHistoryTransferSingleResponseImplToJson(
        _$DetailHistoryTransferSingleResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status_code': instance.status_code,
    };

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      transaction_id: json['transaction_id'] as String?,
      transaction_ref_id: json['transaction_ref_id'] as String?,
      transaction_title: json['transaction_title'] as String?,
      transaction_type: json['transaction_type'] as String?,
      payment_channel: json['payment_channel'] == null
          ? null
          : PaymentChannel.fromJson(
              json['payment_channel'] as Map<String, dynamic>),
      status_transaction: json['status_transaction'] as String?,
      boundary_type: json['boundary_type'] as String?,
      recepients: (json['recepients'] as List<dynamic>?)
          ?.map((e) => Recepient.fromJson(e as Map<String, dynamic>))
          .toList(),
      ppob_product: json['ppob_product'] == null
          ? null
          : PpobProduct.fromJson(json['ppob_product'] as Map<String, dynamic>),
      total_fee: json['total_fee'] == null
          ? null
          : TotalFee.fromJson(json['total_fee'] as Map<String, dynamic>),
      unique_code: (json['unique_code'] as num?)?.toInt(),
      total_amount: (json['total_amount'] as num?)?.toInt(),
      expired_at: (json['expired_at'] as num?)?.toInt(),
      paid_at: (json['paid_at'] as num?)?.toInt(),
      created_at: (json['created_at'] as num?)?.toInt(),
      updated_at: (json['updated_at'] as num?)?.toInt(),
      formatted: json['formatted'] == null
          ? null
          : Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
      rate: json['rate'] == null
          ? null
          : Rate.fromJson(json['rate'] as Map<String, dynamic>),
      sub_status_transaction: json['sub_status_transaction'] as String?,
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transaction_id,
      'transaction_ref_id': instance.transaction_ref_id,
      'transaction_title': instance.transaction_title,
      'transaction_type': instance.transaction_type,
      'payment_channel': instance.payment_channel,
      'status_transaction': instance.status_transaction,
      'boundary_type': instance.boundary_type,
      'recepients': instance.recepients,
      'ppob_product': instance.ppob_product,
      'total_fee': instance.total_fee,
      'unique_code': instance.unique_code,
      'total_amount': instance.total_amount,
      'expired_at': instance.expired_at,
      'paid_at': instance.paid_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'formatted': instance.formatted,
      'rate': instance.rate,
      'sub_status_transaction': instance.sub_status_transaction,
    };

_$PaymentChannelImpl _$$PaymentChannelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentChannelImpl(
      method: json['method'] as String?,
      name: json['name'] as String?,
      currency_type: json['currency_type'] as String?,
      pay_code: json['pay_code'] as String?,
      qr_content: json['qr_content'] as String?,
      qr_image: json['qr_image'] as String?,
    );

Map<String, dynamic> _$$PaymentChannelImplToJson(
        _$PaymentChannelImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'name': instance.name,
      'currency_type': instance.currency_type,
      'pay_code': instance.pay_code,
      'qr_content': instance.qr_content,
      'qr_image': instance.qr_image,
    };

_$RecepientImpl _$$RecepientImplFromJson(Map<String, dynamic> json) =>
    _$RecepientImpl(
      bank_code: json['bank_code'] as String?,
      bank_name: json['bank_name'] as String?,
      account_name: json['account_name'] as String?,
      account_code: json['account_code'] as String?,
      nominal: (json['nominal'] as num?)?.toInt(),
      note: json['note'] as String?,
      currency_type: json['currency_type'] as String?,
      icon_url: json['icon_url'] as String?,
      receive_currency_type: json['receive_currency_type'] as String?,
      receive_nominal: (json['receive_nominal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecepientImplToJson(_$RecepientImpl instance) =>
    <String, dynamic>{
      'bank_code': instance.bank_code,
      'bank_name': instance.bank_name,
      'account_name': instance.account_name,
      'account_code': instance.account_code,
      'nominal': instance.nominal,
      'note': instance.note,
      'currency_type': instance.currency_type,
      'icon_url': instance.icon_url,
      'receive_currency_type': instance.receive_currency_type,
      'receive_nominal': instance.receive_nominal,
    };

_$PpobProductImpl _$$PpobProductImplFromJson(Map<String, dynamic> json) =>
    _$PpobProductImpl(
      product_name: json['product_name'] as String?,
      product_number: json['product_number'] as String?,
      selling_price: (json['selling_price'] as num?)?.toInt(),
      serial_number: json['serial_number'] as String?,
      desc: json['desc'] == null
          ? null
          : PpobProductDescription.fromJson(
              json['desc'] as Map<String, dynamic>),
      formatted: json['formatted'] == null
          ? null
          : Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PpobProductImplToJson(_$PpobProductImpl instance) =>
    <String, dynamic>{
      'product_name': instance.product_name,
      'product_number': instance.product_number,
      'selling_price': instance.selling_price,
      'serial_number': instance.serial_number,
      'desc': instance.desc,
      'formatted': instance.formatted,
    };

_$PpobProductDescriptionImpl _$$PpobProductDescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobProductDescriptionImpl(
      tarif: json['tarif'] as String?,
      alamat: json['alamat'] as String?,
      jatuh_temp: json['jatuh_temp'] as String?,
      daya: (json['daya'] as num?)?.toInt(),
      lembar_tagihan: (json['lembar_tagihan'] as num?)?.toInt(),
      item_name: json['item_name'] as String?,
      jumlah_peserta: json['jumlah_peserta'] as String?,
      no_rangka: json['no_rangka'] as String?,
      no_pol: json['no_pol'] as String?,
      tenor: json['tenor'] as String?,
      tahun_pajak: json['tahun_pajak'] as String?,
      kelurahan: json['kelurahan'] as String?,
      kecamatan: json['kecamatan'] as String?,
      kode_kab_kota: json['kode_kab_kota'] as String?,
      kab_kota: json['kab_kota'] as String?,
      luas_tanah: json['luas_tanah'] as String?,
      luas_gedung: json['luas_gedung'] as String?,
      kode_iuran: json['kode_iuran'] as String?,
      kode_program: json['kode_program'] as String?,
      jkk: (json['jkk'] as num?)?.toInt(),
      jkm: (json['jkm'] as num?)?.toInt(),
      jht: (json['jht'] as num?)?.toInt(),
      jpk: (json['jpk'] as num?)?.toInt(),
      jpn: (json['jpn'] as num?)?.toInt(),
      npp: json['npp'] as String?,
      kode_divisi: json['kode_divisi'] as String?,
      kantor_cabang: json['kantor_cabang'] as String?,
      tgl_efektif: json['tgl_efektif'] as String?,
      tgl_expired: json['tgl_expired'] as String?,
      no_registrasi: json['no_registrasi'] as String?,
      transaksi: json['transaksi'] as String?,
      tanggal_registrasi: json['tanggal_registrasi'] as String?,
      nomor_identitas: json['nomor_identitas'] as String?,
      nomor_rangka: json['nomor_rangka'] as String?,
      nomor_mesin: json['nomor_mesin'] as String?,
      nomor_polisi: json['nomor_polisi'] as String?,
      milik_kenama: json['milik_kenama'] as String?,
      merek_kb: json['merek_kb'] as String?,
      model_kb: json['model_kb'] as String?,
      tahun_buatan: json['tahun_buatan'] as String?,
      tgl_akhir_pajak_baru: json['tgl_akhir_pajak_baru'] as String?,
      biaya_pokok_bbn: json['biaya_pokok_bbn'] as String?,
      biaya_pokok_swd: json['biaya_pokok_swd'] as String?,
      biaya_pokok_pkb: json['biaya_pokok_pkb'] as String?,
      biaya_denda_swd: json['biaya_denda_swd'] as String?,
      biaya_denda_bbn: json['biaya_denda_bbn'] as String?,
      biaya_denda_pkb: json['biaya_denda_pkb'] as String?,
      biaya_admin_stnk: json['biaya_admin_stnk'] as String?,
      biaya_admin_tnkb: json['biaya_admin_tnkb'] as String?,
      biaya_parkir_pokok: json['biaya_parkir_pokok'] as String?,
      biaya_pajak_progresif: json['biaya_pajak_progresif'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$PpobProductDescriptionImplToJson(
        _$PpobProductDescriptionImpl instance) =>
    <String, dynamic>{
      'tarif': instance.tarif,
      'alamat': instance.alamat,
      'jatuh_temp': instance.jatuh_temp,
      'daya': instance.daya,
      'lembar_tagihan': instance.lembar_tagihan,
      'item_name': instance.item_name,
      'jumlah_peserta': instance.jumlah_peserta,
      'no_rangka': instance.no_rangka,
      'no_pol': instance.no_pol,
      'tenor': instance.tenor,
      'tahun_pajak': instance.tahun_pajak,
      'kelurahan': instance.kelurahan,
      'kecamatan': instance.kecamatan,
      'kode_kab_kota': instance.kode_kab_kota,
      'kab_kota': instance.kab_kota,
      'luas_tanah': instance.luas_tanah,
      'luas_gedung': instance.luas_gedung,
      'kode_iuran': instance.kode_iuran,
      'kode_program': instance.kode_program,
      'jkk': instance.jkk,
      'jkm': instance.jkm,
      'jht': instance.jht,
      'jpk': instance.jpk,
      'jpn': instance.jpn,
      'npp': instance.npp,
      'kode_divisi': instance.kode_divisi,
      'kantor_cabang': instance.kantor_cabang,
      'tgl_efektif': instance.tgl_efektif,
      'tgl_expired': instance.tgl_expired,
      'no_registrasi': instance.no_registrasi,
      'transaksi': instance.transaksi,
      'tanggal_registrasi': instance.tanggal_registrasi,
      'nomor_identitas': instance.nomor_identitas,
      'nomor_rangka': instance.nomor_rangka,
      'nomor_mesin': instance.nomor_mesin,
      'nomor_polisi': instance.nomor_polisi,
      'milik_kenama': instance.milik_kenama,
      'merek_kb': instance.merek_kb,
      'model_kb': instance.model_kb,
      'tahun_buatan': instance.tahun_buatan,
      'tgl_akhir_pajak_baru': instance.tgl_akhir_pajak_baru,
      'biaya_pokok_bbn': instance.biaya_pokok_bbn,
      'biaya_pokok_swd': instance.biaya_pokok_swd,
      'biaya_pokok_pkb': instance.biaya_pokok_pkb,
      'biaya_denda_swd': instance.biaya_denda_swd,
      'biaya_denda_bbn': instance.biaya_denda_bbn,
      'biaya_denda_pkb': instance.biaya_denda_pkb,
      'biaya_admin_stnk': instance.biaya_admin_stnk,
      'biaya_admin_tnkb': instance.biaya_admin_tnkb,
      'biaya_parkir_pokok': instance.biaya_parkir_pokok,
      'biaya_pajak_progresif': instance.biaya_pajak_progresif,
      'detail': instance.detail,
    };

_$TotalFeeImpl _$$TotalFeeImplFromJson(Map<String, dynamic> json) =>
    _$TotalFeeImpl(
      amount: (json['amount'] as num?)?.toInt(),
      feature_fee: (json['feature_fee'] as num?)?.toInt(),
      is_feature_free: json['is_feature_free'] as bool?,
      is_free: json['is_free'] as bool?,
      is_payment_channel_free: json['is_payment_channel_free'] as bool?,
      payment_channel_fee: (json['payment_channel_fee'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TotalFeeImplToJson(_$TotalFeeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'feature_fee': instance.feature_fee,
      'is_feature_free': instance.is_feature_free,
      'is_free': instance.is_free,
      'is_payment_channel_free': instance.is_payment_channel_free,
      'payment_channel_fee': instance.payment_channel_fee,
    };

_$FormattedImpl _$$FormattedImplFromJson(Map<String, dynamic> json) =>
    _$FormattedImpl(
      price: json['price'] as String?,
      total_amount: json['total_amount'] as String?,
      total_fee: json['total_fee'] as String?,
      unique_code: json['unique_code'] as String?,
    );

Map<String, dynamic> _$$FormattedImplToJson(_$FormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'total_amount': instance.total_amount,
      'total_fee': instance.total_fee,
      'unique_code': instance.unique_code,
    };

_$RateImpl _$$RateImplFromJson(Map<String, dynamic> json) => _$RateImpl(
      formatted: json['formatted'] == null
          ? null
          : Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
      fx_rate: (json['fx_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RateImplToJson(_$RateImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'fx_rate': instance.fx_rate,
    };
