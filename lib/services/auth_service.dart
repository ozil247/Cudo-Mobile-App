// ignore_for_file: avoid_print


import 'package:flutter_application_1/services/server.dart';

class AuthService {
  final server = Server();

  Future login(String email, String password) async {
    final response =
        await server.authData({'email': email, 'password': password}, 'login');
    print(response);
  }
}
