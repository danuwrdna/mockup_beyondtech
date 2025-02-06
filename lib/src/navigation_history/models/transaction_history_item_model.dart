import 'package:flutter/material.dart';

class TransactionHistoryItemModel {
  final String label;
  final String correspondent;
  final DateTime date;
  final Widget icon;
  final String nominal;
  final String? boundaryType;
  final String? transactionId;
  final List<String?> notes;
  final String paymentMethod;


  TransactionHistoryItemModel({
    required this.label,
    required this.correspondent,
    required this.date,
    required this.icon,
    required this.nominal,
    this.boundaryType,
    required this.transactionId,
    required this.notes,
    required this.paymentMethod,
  });
}
