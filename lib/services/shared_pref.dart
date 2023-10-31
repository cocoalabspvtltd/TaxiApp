import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPref {
  SharedPreferences? _prefs;

  Future init() async => _prefs = await SharedPreferences.getInstance();

  void setStringValue({
    required String key,
    required String value,
  }) async {
    log("value inputted $_prefs");
    await _prefs?.setString(key, value);
  }

  Future<String?> getStringValue({required String key}) async {
    return await _prefs?.getString(key);
  }

  void reset() => _prefs?.clear();
}
