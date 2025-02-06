import 'package:flutter/material.dart';

class ColorResource {
  static const Color white = Color(0xffFFFFFF);

  static const Color black = Color(0xff000000);
  static const Color black100 = Color(0xff2B2B2B);
  static const Color grey500 = Color(0xff9D9D9D);
  static const Color grey400 = Color(0xffA4A4A4);
  static const Color grey300 = Color(0xffCBCBCB);
  static const Color grey200 = Color(0xffD7D7D7);
  static const Color grey100 = Color(0xffF8F8F8);
  static const Color blue050 = Color(0xffF5F7FF);
  static const Color blue100 = Color(0xffEBEEFF);
  static const Color blue300 = Color(0xffDCE2FF);
  static const Color blue400 = Color(0xffCFD5F5);
  static const Color blue550 = Color(0xff6D96E7);
  static const Color blue600 = Color(0xff5C8DEC);
  static const Color blue650 = Color(0xff5E81C5);
  static const Color blue700 = Color(0xff5067DC);
  static const Color blue800 = Color(0xff3045AD);
  static const Color blue850 = Color(0xff2952A1);
  static const Color blue900 = Color(0xff1A4393);
  static const Color lightBlue = Color(0xff25AAE1);
  static const Color lightTurquoise = Color(0xffD4EDF3);
  static const Color turquoise = Color(0xff00AED6);
  static const Color red300 = Color(0xffFB9B9B);
  static const Color red500 = Color(0xffF45D63);
  static const Color red = Color(0xffED1B24);
  static const Color red700 = Color(0xffC83312);
  static const Color yellow100 = Color(0xffFFF8DF);
  static const Color yellow200 = Color(0xffFFF9BE);
  static const Color yellowVerification = Color(0xffFFC107);
  static const Color orange200 = Color(0xffFFEBC6);
  static const Color orange500 = Color(0xffEF733E);
  static const Color green300 = Color(0xffACFFB4);
  static const Color green400 = Color(0xff31D12D);
  static const Color green450 = Color(0xff00D261);
  static const Color green500 = Color(0xff1FB707);
  static const Color green700 = Color(0xff07862B);
  static const Color dana = Color(0xff108DE8);
  static const Color shopee = Color(0xffF44336);
  static const Color bpjs = Color(0xFF33783F);
  static const Color lightBpjs = Color(0xFFD4FADB);
  static const Color remittance = Color(0xff5197BE);
  static const Color darkRemittance = Color(0xff2C6686);
  static const Color mistyRose = Color(0xffFFE9E2);
  static const Color primary = Color(0xff3045AD);
  static const Color onPrimary = Color(0xffFFFFFF);
  static const Color secondary = Color(0xff00C62D);
  static const Color onSecondary = Color(0xffFFFFFF);
  static const Color error = Color(0xffEC1A1A);
  static const Color successText = Color(0xFF11AE2E);
}

class FontWeightResource {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class ImageResource {
  static const String icLogo = "assets/icons/ic_logo.png";
  static const String icFlagID = "assets/icons/ic_flag_id.svg";
  static const String icFlagUS = "assets/icons/ic_flag_us.svg";
}

class StringResource {
  static const String phoneHint = "8xx - xxxx - xxxx";
}

class ENVConst {
  static const String xSignatureSecretKey = "X_SIGNATURE_SECRET_KEY";
  static const String apiKeyGen = "API_KEY_GEN";
  static const String baseUrl = "BASE_URL";
  static const String authUrl = "AUTH_URL";
  static const String profileUrl = "PROFILE_URL";
  static const String verihubsUrl = "VERIHUBS_URL";
  static const String addressUrl = "ADDRESS_URL";
  static const String transactionUrl = "TRANSACTION_URL";
  static const String mockUrl = "MOCK_URL";
  static const String apiVersion = "API_VERSION";
  static const String bcare = "BCARE_URL";
  static const String profileTransactionUrl = "PROFILE_TRANSACTION_URL";
  static const String remittanceUrl = "REMITTANCE_URL";
  static const String ppobUrl = "PPOB_URL";
  static const String notification = "NOTIFICATION_URL";
  static const String tnc = "TERMS_CONDITION_URL";
}

class SharedPrefConst {
  static const String auth = "auth";
  static const String boarding = "boarding";
  static const String language = "language";
  static const String loginToken = "login_token";
}

class PpobConst {
  static const String phone = "1";
  static const String electricity = "2";
  static const String eWallet = "5";
  static const String bpjs = "8891dda5-d77b-4a0c-a267-da981b5c6ebd";
  static const String mobileData = "fdb049e0-6a1d-4659-b7d0-148ff9e8ced2";
  static const String waterBill = "013ce691-3b98-4f84-a89f-c0cece8b0379";
  static const String internetTv = "fdb049e0-6a1d-4659-b7d0-148ff9e8ced7";
  static const String phonePostpaid = "3165a815-58e0-4677-9cf4-2730d7b9fe3f";
}
