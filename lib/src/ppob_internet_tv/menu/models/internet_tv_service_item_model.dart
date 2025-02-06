import 'package:bpay_mobile/src/ppob_internet_tv/menu/models/internet_tv_category_enum.dart';
import 'package:flutter/material.dart';

class InternetTvServiceItemModel {
  final Image logo;
  final String serviceName;
  final InternetTvCategory category;

  InternetTvServiceItemModel({
    required this.logo,
    required this.serviceName,
    required this.category,
  });
}
