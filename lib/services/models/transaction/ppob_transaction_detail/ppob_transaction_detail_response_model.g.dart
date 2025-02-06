// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppob_transaction_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PpobTransactionDetailResponseModelImpl
    _$$PpobTransactionDetailResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailResponseModelImpl(
          data: PpobTransactionDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['status_code'] as String,
        );

Map<String, dynamic> _$$PpobTransactionDetailResponseModelImplToJson(
        _$PpobTransactionDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PpobTransactionDetailDataImpl _$$PpobTransactionDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobTransactionDetailDataImpl(
      boundaryType: json['boundary_type'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      expiredAt: (json['expired_at'] as num).toInt(),
      formatted: PpobTransactionDetailDataFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      paidAt: (json['paid_at'] as num).toInt(),
      paymentChannel: PpobTransactionDetailDataPaymentChannel.fromJson(
          json['payment_channel'] as Map<String, dynamic>),
      ppobProduct: PpobTransactionDetailDataPpobProduct.fromJson(
          json['ppob_product'] as Map<String, dynamic>),
      rate: PpobTransactionDetailDataRate.fromJson(
          json['rate'] as Map<String, dynamic>),
      recipients: (json['recepients'] as List<dynamic>)
          .map((e) => PpobTransactionDetailDataRecipient.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      statusTransaction: json['status_transaction'] as String,
      subStatusTransaction: json['sub_status_transaction'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
      totalFee: PpobTransactionDetailDataTotalFee.fromJson(
          json['total_fee'] as Map<String, dynamic>),
      transactionId: json['transaction_id'] as String,
      transactionRefId: json['transaction_ref_id'] as String,
      transactionTitle: json['transaction_title'] as String,
      transactionType: json['transaction_type'] as String,
      uniqueCode: (json['unique_code'] as num).toInt(),
      updatedAt: (json['updated_at'] as num).toInt(),
    );

Map<String, dynamic> _$$PpobTransactionDetailDataImplToJson(
        _$PpobTransactionDetailDataImpl instance) =>
    <String, dynamic>{
      'boundary_type': instance.boundaryType,
      'created_at': instance.createdAt,
      'expired_at': instance.expiredAt,
      'formatted': instance.formatted,
      'paid_at': instance.paidAt,
      'payment_channel': instance.paymentChannel,
      'ppob_product': instance.ppobProduct,
      'rate': instance.rate,
      'recepients': instance.recipients,
      'status_transaction': instance.statusTransaction,
      'sub_status_transaction': instance.subStatusTransaction,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
      'transaction_id': instance.transactionId,
      'transaction_ref_id': instance.transactionRefId,
      'transaction_title': instance.transactionTitle,
      'transaction_type': instance.transactionType,
      'unique_code': instance.uniqueCode,
      'updated_at': instance.updatedAt,
    };

_$PpobTransactionDetailDataFormattedImpl
    _$$PpobTransactionDetailDataFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataFormattedImpl(
          price: json['price'] as String,
          totalAmount: json['total_amount'] as String,
          totalFee: json['total_fee'] as String,
          uniqueCode: json['unique_code'] as String,
        );

Map<String, dynamic> _$$PpobTransactionDetailDataFormattedImplToJson(
        _$PpobTransactionDetailDataFormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
      'unique_code': instance.uniqueCode,
    };

_$PpobTransactionDetailDataPaymentChannelImpl
    _$$PpobTransactionDetailDataPaymentChannelImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataPaymentChannelImpl(
          currencyType: json['currency_type'] as String,
          method: json['method'] as String,
          name: json['name'] as String,
          payCode: json['pay_code'] as String,
          qrContent: json['qr_content'] as String,
          qrImage: json['qr_image'] as String,
        );

Map<String, dynamic> _$$PpobTransactionDetailDataPaymentChannelImplToJson(
        _$PpobTransactionDetailDataPaymentChannelImpl instance) =>
    <String, dynamic>{
      'currency_type': instance.currencyType,
      'method': instance.method,
      'name': instance.name,
      'pay_code': instance.payCode,
      'qr_content': instance.qrContent,
      'qr_image': instance.qrImage,
    };

_$PpobTransactionDetailDataPpobProductImpl
    _$$PpobTransactionDetailDataPpobProductImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataPpobProductImpl(
          desc: PpobProductDesc.fromJson(json['desc'] as Map<String, dynamic>),
          formatted: json['formatted'],
          productName: json['product_name'] as String,
          productNumber: json['product_number'] as String,
          sellingPrice: (json['selling_price'] as num).toInt(),
          serialNumber: json['serial_number'] as String,
        );

Map<String, dynamic> _$$PpobTransactionDetailDataPpobProductImplToJson(
        _$PpobTransactionDetailDataPpobProductImpl instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'formatted': instance.formatted,
      'product_name': instance.productName,
      'product_number': instance.productNumber,
      'selling_price': instance.sellingPrice,
      'serial_number': instance.serialNumber,
    };

_$PpobProductDescImpl _$$PpobProductDescImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobProductDescImpl(
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
      detail: json['detail'],
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

Map<String, dynamic> _$$PpobProductDescImplToJson(
        _$PpobProductDescImpl instance) =>
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

_$PpobTransactionDetailDataRateImpl
    _$$PpobTransactionDetailDataRateImplFromJson(Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataRateImpl(
          formatted: json['formatted'],
          fxPpobTransactionDetailDataRate: (json['fx_rate'] as num).toInt(),
        );

Map<String, dynamic> _$$PpobTransactionDetailDataRateImplToJson(
        _$PpobTransactionDetailDataRateImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'fx_rate': instance.fxPpobTransactionDetailDataRate,
    };

_$PpobTransactionDetailDataRecipientImpl
    _$$PpobTransactionDetailDataRecipientImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataRecipientImpl(
          accountCode: json['account_code'] as String,
          accountName: json['account_name'] as String,
          bankCode: json['bank_code'] as String,
          bankName: json['bank_name'] as String,
          currencyType: json['currency_type'] as String,
          formatted: json['formatted'],
          iconUrl: json['icon_url'] as String,
          nominal: (json['nominal'] as num).toInt(),
          note: json['note'] as String,
          receiveCurrencyType: json['receive_currency_type'] as String,
          receiveNominal: (json['receive_nominal'] as num).toInt(),
        );

Map<String, dynamic> _$$PpobTransactionDetailDataRecipientImplToJson(
        _$PpobTransactionDetailDataRecipientImpl instance) =>
    <String, dynamic>{
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'bank_code': instance.bankCode,
      'bank_name': instance.bankName,
      'currency_type': instance.currencyType,
      'formatted': instance.formatted,
      'icon_url': instance.iconUrl,
      'nominal': instance.nominal,
      'note': instance.note,
      'receive_currency_type': instance.receiveCurrencyType,
      'receive_nominal': instance.receiveNominal,
    };

_$PpobTransactionDetailDataTotalFeeImpl
    _$$PpobTransactionDetailDataTotalFeeImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionDetailDataTotalFeeImpl(
          amount: (json['amount'] as num).toInt(),
          featureFee: (json['feature_fee'] as num).toInt(),
          isFeatureFree: json['is_feature_free'] as bool,
          isFree: json['is_free'] as bool,
          isPaymentChannelFree: json['is_payment_channel_free'] as bool,
          paymentChannelFee: (json['payment_channel_fee'] as num).toInt(),
        );

Map<String, dynamic> _$$PpobTransactionDetailDataTotalFeeImplToJson(
        _$PpobTransactionDetailDataTotalFeeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'feature_fee': instance.featureFee,
      'is_feature_free': instance.isFeatureFree,
      'is_free': instance.isFree,
      'is_payment_channel_free': instance.isPaymentChannelFree,
      'payment_channel_fee': instance.paymentChannelFee,
    };
