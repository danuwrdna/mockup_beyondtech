import 'package:flutter/material.dart';

class TiledMenuModel {
  final String label;
  final String? svgAsset;
  final Image? imageAsset;
  final Color? background;
  final Color? labelColor;
  final Function()? onTap;

  TiledMenuModel({
    required this.label,
    this.svgAsset,
    this.imageAsset,
    this.background,
    this.labelColor,
    this.onTap,
  });
}
