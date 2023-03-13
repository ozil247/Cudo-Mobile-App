// ignore_for_file: no_leading_underscores_for_local_identifiers, duplicate_ignore

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences prefs;

  LocalStorageService(this.prefs);

  Future<void> setToken(String token) async {
    prefs.setString("CudoToken", token);
  }

  String? getUserToken() {
    return prefs.getString("CudoToken");
  }

  // ignore: no_leading_underscores_for_local_identifiers
  Future<void> setName(_name) async {
    prefs.setString('CudoName', _name);
  }

  Future<void> setEmail(_email) async {
    prefs.setString('CudoEmail', _email);
  }

   String? getEmail() {
    return prefs.getString("CudoEmail");
  }
}