import 'package:bpay_mobile/services/models/ppob/ppob_package_type_enum.dart';
import 'package:flutter/material.dart';

class PhoneDataPackageItemDummyModel {
  final int id;
  final PpobPackageType type;
  final String packageName;
  final Image icons;
  final List<PhoneDataPackageItemDenominationDummyModel> denomination;

  PhoneDataPackageItemDummyModel({
    required this.id,
    required this.type,
    required this.packageName,
    required this.icons,
    required this.denomination,
  });
}

class PhoneDataPackageItemDenominationDummyModel {
  final int id;
  final String name;
  final int price;

  PhoneDataPackageItemDenominationDummyModel({
    required this.id,
    required this.name,
    required this.price,
  });
}
