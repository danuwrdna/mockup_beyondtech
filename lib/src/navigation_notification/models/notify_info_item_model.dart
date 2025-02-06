import 'package:flutter/material.dart';

class   NotifyItemModel {
  final String title;
  final DateTime date;
  final String message;
  final Image icon;

  NotifyItemModel({
    required this.title,
    required this.date,
    required this.message,
    required this.icon,
  });
}
