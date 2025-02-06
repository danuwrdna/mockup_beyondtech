import 'package:cached_network_image/cached_network_image.dart';

class InboxItemModel {
  final String title;
  final DateTime date;
  final String message;
  final CachedNetworkImage banner;
  final String url;

  InboxItemModel({
    required this.title,
    required this.date,
    required this.message,
    required this.banner,
    required this.url,
  });
}
