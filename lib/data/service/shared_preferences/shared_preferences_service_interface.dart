abstract interface class SharedPreferencesServiceInterface {
  Future<bool> getBoolean(String key, {bool defaultValue = false});
  Future<void> setBoolean(String key, {required bool value});
}
