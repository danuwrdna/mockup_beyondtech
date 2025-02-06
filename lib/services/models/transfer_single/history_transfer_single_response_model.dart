import 'dart:convert';

HistoryTransferSingleResponseModel historyTransferSingleResponseModelFromJson(String str) => HistoryTransferSingleResponseModel.fromJson(json.decode(str));

String historyTransferSingleResponseModelToJson(HistoryTransferSingleResponseModel data) => json.encode(data.toJson());

class HistoryTransferSingleResponseModel {
  String? statusCode;
  List<HistoryTransferSingleItem>? data;
  String? message;

  HistoryTransferSingleResponseModel({
    this.statusCode,
    this.data,
    this.message,
  });

  factory HistoryTransferSingleResponseModel.fromJson(Map<String, dynamic> json) => HistoryTransferSingleResponseModel(
    statusCode: json["status_code"],
    data: json["data"] == null ? [] : List<HistoryTransferSingleItem>.from(json["data"]!.map((x) => HistoryTransferSingleItem.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
  };
}

class HistoryTransferSingleItem {
  String? transactionId;
  String? transactionTitle;
  String? transactionType;
  String? statusTransaction;
  String? boundaryType;
  HistoryTransferSingleItemPaymentChannel? paymentChannel;
  List<HistoryTransferSingleItemRecipient>? recepients;
  int? uniqueCode;
  double? totalAmount;
  int? expiredAt;
  int? createdAt;
  int? updatedAt;
  int? paidAt;
  HistoryTransferSingleItemTotalFee? totalFee;
  HistoryTransferSingleItemPpobProduct? ppobProduct;
  HistoryTransferSingleItemFormatted? formatted;

  HistoryTransferSingleItem({
    this.transactionId,
    this.transactionTitle,
    this.transactionType,
    this.statusTransaction,
    this.boundaryType,
    this.paymentChannel,
    this.recepients,
    this.uniqueCode,
    this.totalAmount,
    this.expiredAt,
    this.createdAt,
    this.updatedAt,
    this.paidAt,
    this.totalFee,
    this.ppobProduct,
    this.formatted,
  });

  factory HistoryTransferSingleItem.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItem(
    transactionId: json["transaction_id"],
    transactionTitle: json["transaction_title"],
    transactionType: json["transaction_type"],
    statusTransaction: json["status_transaction"],
    boundaryType: json["boundary_type"],
    paymentChannel: json["payment_channel"] == null ? null : HistoryTransferSingleItemPaymentChannel.fromJson(json["payment_channel"]),
    recepients: json["recepients"] == null ? [] : List<HistoryTransferSingleItemRecipient>.from(json["recepients"]!.map((x) => HistoryTransferSingleItemRecipient.fromJson(x))),
    uniqueCode: json["unique_code"],
    totalAmount: json["total_amount"]?.toDouble(),
    expiredAt: json["expired_at"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    paidAt: json["paid_at"],
    totalFee: json["total_fee"] == null ? null : HistoryTransferSingleItemTotalFee.fromJson(json["total_fee"]),
    ppobProduct: json["ppob_product"] == null ? null : HistoryTransferSingleItemPpobProduct.fromJson(json["ppob_product"]),
    formatted: json["formatted"] == null ? null : HistoryTransferSingleItemFormatted.fromJson(json["formatted"]),
  );

  Map<String, dynamic> toJson() => {
    "transaction_id": transactionId,
    "transaction_title": transactionTitle,
    "transaction_type": transactionType,
    "status_transaction": statusTransaction,
    "boundary_type": boundaryType,
    "payment_channel": paymentChannel?.toJson(),
    "recepients": recepients == null ? [] : List<dynamic>.from(recepients!.map((x) => x.toJson())),
    "unique_code": uniqueCode,
    "total_amount": totalAmount,
    "expired_at": expiredAt,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "paid_at": paidAt,
    "total_fee": totalFee?.toJson(),
    "ppob_product": ppobProduct?.toJson(),
    "formatted": formatted?.toJson(),
  };
}

class HistoryTransferSingleItemFormatted {
  String? price;
  String? totalFee;
  String? uniqueCode;
  String? totalAmount;

  HistoryTransferSingleItemFormatted({
    this.price,
    this.totalFee,
    this.uniqueCode,
    this.totalAmount,
  });

  factory HistoryTransferSingleItemFormatted.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemFormatted(
    price: json["price"],
    totalFee: json["total_fee"],
    uniqueCode: json["unique_code"],
    totalAmount: json["total_amount"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "total_fee": totalFee,
    "unique_code": uniqueCode,
    "total_amount": totalAmount,
  };
}

class HistoryTransferSingleItemPaymentChannel {
  String? method;
  String? name;
  String? currencyType;
  String? payCode;
  String? qrImage;
  String? qrContent;

  HistoryTransferSingleItemPaymentChannel({
    this.method,
    this.name,
    this.currencyType,
    this.payCode,
    this.qrImage,
    this.qrContent,
  });

  factory HistoryTransferSingleItemPaymentChannel.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemPaymentChannel(
    method: json["method"],
    name: json["name"],
    currencyType: json["currency_type"],
    payCode: json["pay_code"],
    qrImage: json["qr_image"],
    qrContent: json["qr_content"],
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "name": name,
    "currency_type": currencyType,
    "pay_code": payCode,
    "qr_image": qrImage,
    "qr_content": qrContent,
  };
}

class HistoryTransferSingleItemPpobProduct {
  String? productName;
  String? productNumber;
  int? sellingPrice;
  String? serialNumber;
  dynamic formatted;
  HistoryTransferSingleItemDesc? desc;

  HistoryTransferSingleItemPpobProduct({
    this.productName,
    this.productNumber,
    this.sellingPrice,
    this.serialNumber,
    this.formatted,
    this.desc,
  });

  factory HistoryTransferSingleItemPpobProduct.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemPpobProduct(
    productName: json["product_name"],
    productNumber: json["product_number"],
    sellingPrice: json["selling_price"],
    serialNumber: json["serial_number"],
    formatted: json["formatted"],
    desc: json["desc"] == null ? null : HistoryTransferSingleItemDesc.fromJson(json["desc"]),
  );

  Map<String, dynamic> toJson() => {
    "product_name": productName,
    "product_number": productNumber,
    "selling_price": sellingPrice,
    "serial_number": serialNumber,
    "formatted": formatted,
    "desc": desc?.toJson(),
  };
}

class HistoryTransferSingleItemDesc {
  String? tarif;
  String? alamat;
  String? jatuhTemp;
  int? daya;
  int? lembarTagihan;
  String? itemName;
  String? jumlahPeserta;
  String? noRangka;
  String? noPol;
  String? tenor;
  String? tahunPajak;
  String? kelurahan;
  String? kecamatan;
  String? kodeKabKota;
  String? kabKota;
  String? luasTanah;
  String? luasGedung;
  String? kodeIuran;
  String? kodeProgram;
  int? jkk;
  int? jkm;
  int? jht;
  int? jpk;
  int? jpn;
  String? npp;
  String? kodeDivisi;
  String? kantorCabang;
  String? tglEfektif;
  String? tglExpired;
  String? noRegistrasi;
  String? transaksi;
  String? tanggalRegistrasi;
  String? nomorIdentitas;
  String? nomorRangka;
  String? nomorMesin;
  String? nomorPolisi;
  String? milikKenama;
  String? merekKb;
  String? modelKb;
  String? tahunBuatan;
  String? tglAkhirPajakBaru;
  String? biayaPokokBbn;
  String? biayaPokokSwd;
  String? biayaPokokPkb;
  String? biayaDendaSwd;
  String? biayaDendaBbn;
  String? biayaDendaPkb;
  String? biayaAdminStnk;
  String? biayaAdminTnkb;
  String? biayaParkirPokok;
  String? biayaPajakProgresif;
  dynamic detail;

  HistoryTransferSingleItemDesc({
    this.tarif,
    this.alamat,
    this.jatuhTemp,
    this.daya,
    this.lembarTagihan,
    this.itemName,
    this.jumlahPeserta,
    this.noRangka,
    this.noPol,
    this.tenor,
    this.tahunPajak,
    this.kelurahan,
    this.kecamatan,
    this.kodeKabKota,
    this.kabKota,
    this.luasTanah,
    this.luasGedung,
    this.kodeIuran,
    this.kodeProgram,
    this.jkk,
    this.jkm,
    this.jht,
    this.jpk,
    this.jpn,
    this.npp,
    this.kodeDivisi,
    this.kantorCabang,
    this.tglEfektif,
    this.tglExpired,
    this.noRegistrasi,
    this.transaksi,
    this.tanggalRegistrasi,
    this.nomorIdentitas,
    this.nomorRangka,
    this.nomorMesin,
    this.nomorPolisi,
    this.milikKenama,
    this.merekKb,
    this.modelKb,
    this.tahunBuatan,
    this.tglAkhirPajakBaru,
    this.biayaPokokBbn,
    this.biayaPokokSwd,
    this.biayaPokokPkb,
    this.biayaDendaSwd,
    this.biayaDendaBbn,
    this.biayaDendaPkb,
    this.biayaAdminStnk,
    this.biayaAdminTnkb,
    this.biayaParkirPokok,
    this.biayaPajakProgresif,
    this.detail,
  });

  factory HistoryTransferSingleItemDesc.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemDesc(
    tarif: json["tarif"],
    alamat: json["alamat"],
    jatuhTemp: json["jatuh_temp"],
    daya: json["daya"],
    lembarTagihan: json["lembar_tagihan"],
    itemName: json["item_name"],
    jumlahPeserta: json["jumlah_peserta"],
    noRangka: json["no_rangka"],
    noPol: json["no_pol"],
    tenor: json["tenor"],
    tahunPajak: json["tahun_pajak"],
    kelurahan: json["kelurahan"],
    kecamatan: json["kecamatan"],
    kodeKabKota: json["kode_kab_kota"],
    kabKota: json["kab_kota"],
    luasTanah: json["luas_tanah"],
    luasGedung: json["luas_gedung"],
    kodeIuran: json["kode_iuran"],
    kodeProgram: json["kode_program"],
    jkk: json["jkk"],
    jkm: json["jkm"],
    jht: json["jht"],
    jpk: json["jpk"],
    jpn: json["jpn"],
    npp: json["npp"],
    kodeDivisi: json["kode_divisi"],
    kantorCabang: json["kantor_cabang"],
    tglEfektif: json["tgl_efektif"],
    tglExpired: json["tgl_expired"],
    noRegistrasi: json["no_registrasi"],
    transaksi: json["transaksi"],
    tanggalRegistrasi: json["tanggal_registrasi"],
    nomorIdentitas: json["nomor_identitas"],
    nomorRangka: json["nomor_rangka"],
    nomorMesin: json["nomor_mesin"],
    nomorPolisi: json["nomor_polisi"],
    milikKenama: json["milik_kenama"],
    merekKb: json["merek_kb"],
    modelKb: json["model_kb"],
    tahunBuatan: json["tahun_buatan"],
    tglAkhirPajakBaru: json["tgl_akhir_pajak_baru"],
    biayaPokokBbn: json["biaya_pokok_bbn"],
    biayaPokokSwd: json["biaya_pokok_swd"],
    biayaPokokPkb: json["biaya_pokok_pkb"],
    biayaDendaSwd: json["biaya_denda_swd"],
    biayaDendaBbn: json["biaya_denda_bbn"],
    biayaDendaPkb: json["biaya_denda_pkb"],
    biayaAdminStnk: json["biaya_admin_stnk"],
    biayaAdminTnkb: json["biaya_admin_tnkb"],
    biayaParkirPokok: json["biaya_parkir_pokok"],
    biayaPajakProgresif: json["biaya_pajak_progresif"],
    detail: json["detail"],
  );

  Map<String, dynamic> toJson() => {
    "tarif": tarif,
    "alamat": alamat,
    "jatuh_temp": jatuhTemp,
    "daya": daya,
    "lembar_tagihan": lembarTagihan,
    "item_name": itemName,
    "jumlah_peserta": jumlahPeserta,
    "no_rangka": noRangka,
    "no_pol": noPol,
    "tenor": tenor,
    "tahun_pajak": tahunPajak,
    "kelurahan": kelurahan,
    "kecamatan": kecamatan,
    "kode_kab_kota": kodeKabKota,
    "kab_kota": kabKota,
    "luas_tanah": luasTanah,
    "luas_gedung": luasGedung,
    "kode_iuran": kodeIuran,
    "kode_program": kodeProgram,
    "jkk": jkk,
    "jkm": jkm,
    "jht": jht,
    "jpk": jpk,
    "jpn": jpn,
    "npp": npp,
    "kode_divisi": kodeDivisi,
    "kantor_cabang": kantorCabang,
    "tgl_efektif": tglEfektif,
    "tgl_expired": tglExpired,
    "no_registrasi": noRegistrasi,
    "transaksi": transaksi,
    "tanggal_registrasi": tanggalRegistrasi,
    "nomor_identitas": nomorIdentitas,
    "nomor_rangka": nomorRangka,
    "nomor_mesin": nomorMesin,
    "nomor_polisi": nomorPolisi,
    "milik_kenama": milikKenama,
    "merek_kb": merekKb,
    "model_kb": modelKb,
    "tahun_buatan": tahunBuatan,
    "tgl_akhir_pajak_baru": tglAkhirPajakBaru,
    "biaya_pokok_bbn": biayaPokokBbn,
    "biaya_pokok_swd": biayaPokokSwd,
    "biaya_pokok_pkb": biayaPokokPkb,
    "biaya_denda_swd": biayaDendaSwd,
    "biaya_denda_bbn": biayaDendaBbn,
    "biaya_denda_pkb": biayaDendaPkb,
    "biaya_admin_stnk": biayaAdminStnk,
    "biaya_admin_tnkb": biayaAdminTnkb,
    "biaya_parkir_pokok": biayaParkirPokok,
    "biaya_pajak_progresif": biayaPajakProgresif,
    "detail": detail,
  };
}

class HistoryTransferSingleItemRecipient {
  String? bankCode;
  String? accountName;
  String? accountCode;
  int? nominal;
  String? note;
  String? currencyType;
  String? iconUrl;
  dynamic formatted;

  HistoryTransferSingleItemRecipient({
    this.bankCode,
    this.accountName,
    this.accountCode,
    this.nominal,
    this.note,
    this.currencyType,
    this.iconUrl,
    this.formatted,
  });

  factory HistoryTransferSingleItemRecipient.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemRecipient(
    bankCode: json["bank_code"],
    accountName: json["account_name"],
    accountCode: json["account_code"],
    nominal: json["nominal"],
    note: json["note"],
    currencyType: json["currency_type"],
    iconUrl: json["icon_url"],
    formatted: json["formatted"],
  );

  Map<String, dynamic> toJson() => {
    "bank_code": bankCode,
    "account_name": accountName,
    "account_code": accountCode,
    "nominal": nominal,
    "note": note,
    "currency_type": currencyType,
    "icon_url": iconUrl,
    "formatted": formatted,
  };
}

class HistoryTransferSingleItemTotalFee {
  double? amount;
  bool? isFree;

  HistoryTransferSingleItemTotalFee({
    this.amount,
    this.isFree,
  });

  factory HistoryTransferSingleItemTotalFee.fromJson(Map<String, dynamic> json) => HistoryTransferSingleItemTotalFee(
    amount: json["amount"]?.toDouble(),
    isFree: json["is_free"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "is_free": isFree,
  };
}
