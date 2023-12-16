import 'package:clean_project/helpers/constants/constants.dart';
import 'package:clean_project/core/data/local_data_source/shared_preference/shared_preference_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:clean_project/injection.dart';

class SharedPreferenceDataSource implements SharedPreferenceInterface {
  final SharedPreferences _sharedPreferences = sl<SharedPreferences>();

  Future<SharedPreferences?> getPreference() async {
    return _sharedPreferences;
  }

  Future<bool> saveAppLanguage(String language) {
    return _sharedPreferences.setString(AppConstants.languageKEY, language);
  }

  String getAppLanguage() {
    return _sharedPreferences.getString(AppConstants.languageKEY)!;
  }

  String getToken() {
    return _sharedPreferences.getString(AppConstants.tokenKEY)!;
  }

  Future<bool> saveToken(String? token) {
    return _sharedPreferences.setString(AppConstants.tokenKEY, token ?? 'token');
  }

  @override
  String get language => getAppLanguage();

  @override
  String get token => getToken();

  @override
  set language(String value) => saveAppLanguage(value);

  @override
  set token(String? value) => saveToken(value);
}
