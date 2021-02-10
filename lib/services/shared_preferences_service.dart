import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferences _sharedPreferences;

  _createSharedPreferencesInstance() async {
    if (_sharedPreferences == null) {
      print("getInstance");
      _sharedPreferences = await SharedPreferences.getInstance();
    }
    return _sharedPreferences;
  }

  SharedPreferencesHelper._() {
    _createSharedPreferencesInstance();
  }

  static SharedPreferencesHelper instance = SharedPreferencesHelper._();
}
