import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferences _sharedPreferences;

  Future _createSharedPreferencesInstance() async {
    if (_sharedPreferences == null) {
      print("getInstance");
      _sharedPreferences = await SharedPreferences.getInstance();
    }
    return _sharedPreferences;
  }

  SharedPreferencesHelper._();

  static Future<SharedPreferencesHelper> create(index) async {
    SharedPreferencesHelper sharedPreferencesHelper =
        SharedPreferencesHelper._();
    await sharedPreferencesHelper._createSharedPreferencesInstance();

    return sharedPreferencesHelper;
  }

  // methods
  set secret(value) {
    _sharedPreferences.setString("secret", value);
  }

  String get secret {
    return _sharedPreferences.getString("secret") ?? "";
  }
}
