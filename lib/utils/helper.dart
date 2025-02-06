import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bpay_mobile/src/navigation_home/models/user_validation_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_status_enum.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_type_enum.dart';
import 'package:bpay_mobile/widgets/identity_verification_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saver_gallery/saver_gallery.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

String convertToIdr(num number, int decimalDigit) {
  NumberFormat currencyFormatter = NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp ',
    decimalDigits: decimalDigit,
  );
  return currencyFormatter.format(number);
}

String convertToCurrency(num number, int decimalDigit) {
  NumberFormat currencyFormatter = NumberFormat.currency(
    locale: 'id',
    symbol: '',
    decimalDigits: decimalDigit,
  );
  return currencyFormatter.format(number);
}

String createXSignature({
  String? bodyValues,
  String? paramValues,
  required DateTime time,
  required String? secretKey,
}) {
  String timestamp = toIso8601String(time);
  String data = "${paramValues != null ? "$paramValues/" : ""}"
      "${bodyValues != null ? "$bodyValues/" : ""}"
      "$timestamp/$secretKey";
  Logger().d(data);
  Hmac hmacSha256 = Hmac(sha256, utf8.encode("X-SIGNATURE"));
  Digest digest = hmacSha256.convert(utf8.encode(data));
  return digest.toString();
}

String mapToSlashedString(Map<String, dynamic> data) {
  List<String> values = [];

  void addValues(dynamic value) {
    if (value is Map<String, dynamic>) {
      value.forEach((key, innerValue) => addValues(innerValue));
    } else if (value is List) {
      for (var element in value) {
        addValues(element);
      }
    } else if (value != null && value.toString().isNotEmpty) {
      if (value.toString().length >= 500) {
        values.add(value.toString().substring(0, 100));
      } else {
        values.add(value.toString());
      }
    }
  }

  data.forEach((key, value) {
    addValues(value);
  });

  return values.join('/');
}

String toIso8601String(DateTime time) {
  String formattedDate = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(time);
  String timeZone = "T${timeZoneOffsetToFormattedString(time.timeZoneOffset)}";
  return "$formattedDate$timeZone";
}

String timeZoneOffsetToFormattedString(Duration timeZoneOffset) {
  bool isNegative = timeZoneOffset.isNegative;
  int minutes = timeZoneOffset.abs().inMinutes;
  String formattedTimeZone = "";
  if (isNegative) {
    formattedTimeZone += "-";
  } else {
    formattedTimeZone += "+";
  }
  if ((minutes ~/ 60).toString().length == 1) {
    formattedTimeZone += "0${minutes ~/ 60}";
  } else {
    formattedTimeZone += (minutes ~/ 60).toString();
  }
  if (minutes % 60 == 0) {
    formattedTimeZone += "00";
  } else {
    formattedTimeZone += (minutes % 60).toString();
  }
  return formattedTimeZone;
}

Future<String?> getDeviceName() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return "${androidInfo.brand} ${androidInfo.model}";
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    return iosInfo.utsname.machine;
  }
  return null;
}

Future<String?> getOSName() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return "Android ${androidInfo.version.release}";
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    return "iOS ${iosInfo.systemVersion}";
  }
  return null;
}

Future<String?> getDeviceIpAddress() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult.first == ConnectivityResult.none) {
    return null;
  }

  for (var interface in await NetworkInterface.list()) {
    for (var address in interface.addresses) {
      if (address.type == InternetAddressType.IPv4 && !address.isLoopback) {
        return address.address;
      }
    }
  }
  return null;
}

bool hasForbiddenCharacter(String input) {
  final forbiddenCharacters = RegExp("[!@#\$%^&*?|{};”~<>,./\" '`]");
  return forbiddenCharacters.hasMatch(input);
}

String formatObscurePhoneNumber(String phoneNumber) {
  String start = phoneNumber.substring(0, 2);
  String middle = 'x' * (phoneNumber.length - 4);
  String end = phoneNumber.substring(phoneNumber.length - 2);

  return '$start$middle$end';
}

String? createInitial(String? name) {
  if (name == null) return null;
  List<String> splittedName = name.split(" ");
  if (splittedName.length == 1) {
    return splittedName[0][0].toUpperCase();
  }
  return "${splittedName[0][0].toUpperCase()}${splittedName[splittedName.length - 1][0].toUpperCase()}";
}

String convertImageFileToBase64(File image) {
  final bytes = image.readAsBytesSync();
  final encodedBytes = base64Encode(bytes);
  String base64Image = "data:image/jpeg;base64,$encodedBytes";
  return base64Image;
}

// UserValidationType? verifyUserValidation(UserValidationData? data) {
//   if (data == null) return null;
//   if (data.phoneNumberValidation == UserValidationStatus.inactive.value) {
//     return UserValidationType.phoneNumber;
//   }
//   if (data.faceIdentityValidation == UserValidationStatus.inactive.value) {
//     return UserValidationType.faceIdentity;
//   }
//   if (data.identityValidation == UserValidationStatus.inactive.value) {
//     return UserValidationType.identity;
//   }
//   if (data.phoneNumberValidation == UserValidationStatus.pending.value ||
//       data.faceIdentityValidation == UserValidationStatus.pending.value ||
//       data.identityValidation == UserValidationStatus.pending.value) {
//     return UserValidationType.pending;
//   }
//   return UserValidationType.active;
// }

void handleUserValidation(
  BuildContext context, {
  required void Function() onActive,
  // required UserValidationType? userValidationType,
}) {
  // if (userValidationType == UserValidationType.active) {
  //   onActive();
  // } else if (userValidationType == UserValidationType.pending) {
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     // return const IdentityVerificationDialog(isPending: true);
      
    //   },
    // );
  // } else if (userValidationType == UserValidationType.identity ||
  //     userValidationType == UserValidationType.faceIdentity) {
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     // return const IdentityVerificationDialog();
    //   },
    // );
  // } else {
  //   showSnackBar(
  //     context,
  //     "An unexpected error occurred. Please contact our support.",
  //   );
  // }
}

String getOperator(String phoneNumber) {
  Map<String, String> operatorPrefixes = {
    // Telkomsel
    '0812': 'Telkomsel',
    '0813': 'Telkomsel',
    '0821': 'Telkomsel',
    '0822': 'Telkomsel',
    '0852': 'Telkomsel',
    '0853': 'Telkomsel',
    '0823': 'Telkomsel',
    '0851': 'Telkomsel',
    // Indosat
    '0814': 'Indosat',
    '0815': 'Indosat',
    '0816': 'Indosat',
    '0855': 'Indosat',
    '0856': 'Indosat',
    '0857': 'Indosat',
    '0858': 'Indosat',
    // XL
    '0817': 'XL',
    '0818': 'XL',
    '0819': 'XL',
    '0859': 'XL',
    '0877': 'XL',
    '0878': 'XL',
    // Axis (now part of XL)
    '0831': 'Axis',
    '0832': 'Axis',
    '0833': 'Axis',
    '0838': 'Axis',
    // Tri
    '0895': 'Tri',
    '0896': 'Tri',
    '0897': 'Tri',
    '0898': 'Tri',
    '0899': 'Tri',
    // Smartfren
    '0881': 'Smartfren',
    '0882': 'Smartfren',
    '0883': 'Smartfren',
    '0884': 'Smartfren',
    '0885': 'Smartfren',
    '0886': 'Smartfren',
    '0887': 'Smartfren',
    '0888': 'Smartfren',
    '0889': 'Smartfren',
  };

  String prefix = phoneNumber.substring(0, 4);
  return operatorPrefixes[prefix] ?? 'Unknown Operator';
}

Future<void> openUrl(BuildContext context, String url) async {
  final Uri uri = Uri.parse(url);
  try {
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $uri');
    }
  } catch (e) {
    if (context.mounted) {
      showSnackBar(context, "Can not open URL");
    }
  }
}

class ScreenshotHelper {
  final ScreenshotController screenshotController = ScreenshotController();
  final ScreenshotController screenshotHelper = ScreenshotController();

  Future<bool> _requestPermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
    }
    return status.isGranted;
  }

  Future<void> captureAndSaveScreenshot(context, String fileName) async {
    try {
      if (await _requestPermission()) {
        final Uint8List? imageFile = await screenshotController.capture();
        if (imageFile != null) {
          final tempDir = Directory.systemTemp;
          final filePath = '${tempDir.path}/$fileName.png';
          final File file = File(filePath);
          await file.writeAsBytes(imageFile);

          final Uint8List fileBytes = await file.readAsBytes();

          final SaveResult result = await SaverGallery.saveImage(
            fileBytes,
            fileName: fileName,
            skipIfExists: false,
          );

          if (result.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Gambar berhasil disimpan di galeri")));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Gagal menyimpan gambar")));
          }
        }
      }
    } catch (e) {
      Logger().e("Error saat menyimpan screenshot: $e");
    }
  }

  Future<void> shareScreenshot(context, String fileName) async {
    try {
      // Capture screenshot
      final Uint8List? imageBytes = await screenshotController.capture();
      if (imageBytes == null) {
        return;
      }

      // final XFile imageFile = XFile.fromData(imageBytes,
      //     mimeType: 'image.png', name: 'shared_image.png');

      final filePath = '${Directory.systemTemp.path}/$fileName.png';
      final File file = File(filePath);
      await file.writeAsBytes(imageBytes);

      // Share the image
      await Share.shareXFiles([XFile(filePath)],
          text: 'Here is my screenshot!');
    } catch (e) {
      debugPrint('Error sharing screenshot: $e');
    }
  }
}

class BiometricsHelper {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> checkBiometrics() async {
    bool canCheckBiometrics;
    List<BiometricType> availableBiometrics;

    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
      availableBiometrics = await auth.getAvailableBiometrics();

      if (canCheckBiometrics || availableBiometrics.isEmpty) {
        debugPrint("Biometrics not available or not set up");
        return false;
      }
      return true;
    } catch (e) {
      debugPrint('Error checking biometrics $e');
      return false;
    }
  }

  Future<bool> authenticateBiometric(context) async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: "Gunakan biomterik untuk akses aplikasi",
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      if (authenticated) {
        return true;
      } else {
        showSnackBar(context, "Authentication Failed");
        return false;
      }
    } catch (e) {
      showSnackBar(
          context, "Your device not support Biometrics Authentication");
      return false;
    }
  }

  Future<void> saveBiometricPreference(bool isEnabled) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('biometric_enabled', isEnabled);
  }

  Future<bool> getBiometricPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('biometric_enabled') ?? false;
  }
}
