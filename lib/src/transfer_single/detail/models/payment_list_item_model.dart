import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:flutter/material.dart';

class PaymentListItemModel {
  final String name;
  final String code;
  final Image image;
  final PaymentMethod category;
  final num? nominal;
  final num? fee;

  PaymentListItemModel({
    required this.name,
    required this.code,
    required this.image,
    required this.category,
    this.nominal,
    this.fee,
  });
}



