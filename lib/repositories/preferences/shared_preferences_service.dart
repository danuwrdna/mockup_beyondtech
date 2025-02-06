import 'package:bpay_mobile/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static Future<SharedPreferences> get _instance async {
    return preferences ??= await SharedPreferences.getInstance();
  }

  static SharedPreferences? preferences;

  static Future<SharedPreferences> init() async {
    preferences = await _instance;
    return preferences ?? await SharedPreferences.getInstance();
  }

  static Future<void> setBoarding(bool isBoarded) async {
    await preferences?.setBool(SharedPrefConst.boarding, isBoarded);
  }

  static bool getBoarding() {
    return preferences?.getBool(SharedPrefConst.boarding) ?? false;
  }

  static Future<void> setLoginToken(String token) async {
    await preferences?.setString(SharedPrefConst.loginToken, token);
  }

  static String? getLoginToken() {
    return preferences?.getString(SharedPrefConst.loginToken);
  }

  static Future<void> removeLoginToken() async {
    await preferences?.remove(SharedPrefConst.loginToken);
  }

  static Future<void> clearAll() async {
    await preferences?.clear();
  }
}
