// ignore_for_file: avoid_single_cascade_in_expression_statements, avoid_print, prefer_const_constructors, use_build_context_synchronously, unused_import, unrelated_type_equality_checks

import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/models/login_response.dart';
import 'package:flutter_application_1/services/local_storage_service.dart';
import 'package:flutter_application_1/services/server.dart';
import 'package:flutter_application_1/widget/getit.dart';
import 'package:get/get.dart';

class AuthVm extends ChangeNotifier {
  // login controllers
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final name = TextEditingController();

  Server server = Server();

  bool loading = false;

  Future<void> login(BuildContext context) async {
    print('loading');
    loading = true;
    notifyListeners();
    final response = await server
        .authData({'email': email.text, 'password': password.text}, '/login');

    final Map<String, dynamic> parsed = json.decode(response.body);
    final result = LoginResponse.fromJson(parsed);
    print(response.body);
    if (result.statusCode == 200) {
      await getIt.get<LocalStorageService>().setName(result.data?.name);
      await getIt.get<LocalStorageService>().setToken(result.token ?? '');

      await  Get.offAll(Dashboard());
    } else {
      Flushbar(
        title: "Oops",
        message: "Incorrect credentials",
        duration: Duration(seconds: 3),
      )..show(context);
    }
    
    loading = false;
    notifyListeners();
  }
}