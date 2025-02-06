import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context,
  String message, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.only(bottom: 20, left: 12, right: 12),
      behavior: SnackBarBehavior.floating,
      duration: duration,
      backgroundColor: ColorResource.grey300,
      content: Text(
        message,
        style: const TextStyle(color: ColorResource.black),
      ),
    ),
  );
}
