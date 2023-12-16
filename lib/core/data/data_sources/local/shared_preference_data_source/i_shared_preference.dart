abstract class SharedPreferenceInterface {
  // Int functions
  Future<bool> saveInt(String key, int value);
  int? getInt(String key);

  // String functions
  Future<bool> saveString(String key, String value);
  String? getString(String key);

  // Double functions
  Future<bool> saveDouble(String key, double value);
  double? getDouble(String key);

  // Bool functions
  Future<bool> saveBool(String key, bool value);
  bool? getBool(String key);

  // Key functions
  Future<bool> removeKey(String key);
  bool containsKey(String key);

  // clear SharedPreference
  Future<bool> clear();
}
