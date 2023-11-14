import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_service_interface.dart';

class SharedPreferencesService implements SharedPreferencesServiceInterface {
  Future<SharedPreferences> get sharedPreferencesInstance async => await SharedPreferences.getInstance();

  @override
  Future<bool> getBoolean(String key, {bool defaultValue = false}) async {
    final sharedPreferences = await sharedPreferencesInstance;
    final value = sharedPreferences.getBool(key);
    return value ?? defaultValue;
  }

  @override
  Future<void> setBoolean(String key, {required bool value}) async {
    final sharedPreferences = await sharedPreferencesInstance;
    await sharedPreferences.setBool(key, value);
  }
}
