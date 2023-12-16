import 'package:clean_project/core/data/data_sources/local/shared_preference_data_source/i_shared_preference.dart';
import 'package:clean_project/helpers/constants/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceDataSource implements SharedPreferenceInterface {

  final SharedPreferences sharedPreferences;

  SharedPreferenceDataSource({required this.sharedPreferences});

  /// Basic Functions
  // Int functions
  @override
  Future<bool> saveInt(String key, int value) => sharedPreferences.setInt(key, value);
  @override
  int? getInt(String key) => sharedPreferences.getInt(key);


  // String functions
  @override
  Future<bool> saveString(String key, String value) => sharedPreferences.setString(key, value);
  @override
  String? getString(String key) => sharedPreferences.getString(key);


  // Double functions
  @override
  Future<bool> saveDouble(String key, double value) => sharedPreferences.setDouble(key, value);
  @override
  double? getDouble(String key) => sharedPreferences.getDouble(key);


  // Bool functions
  @override
  Future<bool> saveBool(String key, bool value) => sharedPreferences.setBool(key, value);
  @override
  bool? getBool(String key) => sharedPreferences.getBool(key);


  // Key functions
  @override
  Future<bool> removeKey(String key) => sharedPreferences.remove(key);
  @override
  bool containsKey(String key) => sharedPreferences.containsKey(key);


  // clear SharedPreference
  @override
  Future<bool> clear() => sharedPreferences.clear();

  /// Other Functions
  // app language functions
  Future<bool> saveAppLanguage(String appLanguage) => saveString(SharedPreferencesKeys.APP_LANGAUAGE, appLanguage);
  String? getAppLanguage() => getString(SharedPreferencesKeys.APP_LANGAUAGE);

  // basic token functions
  Future<bool> saveToken(String token) => saveString(SharedPreferencesKeys.TOKEN, token);
  String? getToken() => getString(SharedPreferencesKeys.TOKEN);

  // refresh token functions
  Future<bool> saveRefreshToken(String token) => saveString(SharedPreferencesKeys.REFRESH_TOKEN, token);
  String? getRefreshToken() => getString(SharedPreferencesKeys.REFRESH_TOKEN);


  // first app opening functions
  Future<bool> saveAppFirstOpening() => saveBool(SharedPreferencesKeys.FIRST_APP_OPENING, false);
  bool? getAppFirstOpening() => getBool(SharedPreferencesKeys.FIRST_APP_OPENING);
}
