import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageDatasource {
  static const String _loginKey = 'isloggedin';


  Future<void> setLoggedIn(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_loginKey, value);
  }


  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_loginKey) ?? false;
  }
}
