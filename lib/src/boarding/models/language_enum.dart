import 'package:bpay_mobile/utils/constants.dart';

enum Language {
  id("id", "INA", ImageResource.icFlagID),
  en("en", "ENG", ImageResource.icFlagUS);

  final String code;
  final String name;
  final String icon;

  const Language(this.code, this.name, this.icon);
}
