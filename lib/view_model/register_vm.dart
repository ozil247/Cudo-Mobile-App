// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, use_build_context_synchronously, prefer_const_constructors, unused_import, unrelated_type_equality_checks

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/verify_email.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/models/register_response.dart';
import 'package:flutter_application_1/services/local_storage_service.dart';
import 'package:flutter_application_1/services/server.dart';
import 'package:flutter_application_1/widget/getit.dart';
import 'package:get/get.dart';

class RegisterVm extends ChangeNotifier {
  final email = TextEditingController();
  final password = TextEditingController();

  final confirmPassword = TextEditingController();

  String type = 'Client';
  final name = TextEditingController();
  final phone = TextEditingController();
  

  Server server = Server();

  bool loading = false;

  Future<void> register(BuildContext context)async {
    loading = true;
    notifyListeners();

    // phone.text = '09097763226';

    final response = await server.authData({
      'type': type,
      'name': name.text,
      'email': email.text,
      'password': password.text,
      'password_confirmation': confirmPassword.text,
      'phone': phone.text,
    }, '/register');

    final Map<String, dynamic> parsed = json.decode(response.body);
    print(response.body);
    // if (response.statusCode == true) {
     
    //   Flushbar(
    //     title: "Oops",
    //     message: parsed['errors'].toString(),
    //     duration: Duration(seconds: 3),
    //   )..show(context);

    //   loading = false;
    //   notifyListeners();

    //   return;
    // }

    final result = RegisterResponse.fromJson(parsed);
    if (result.statusCode == true) {
      await getIt.get<LocalStorageService>().setName(result.data?.name);
      await getIt.get<LocalStorageService>().setToken(result.token ?? '');
      await getIt.get<LocalStorageService>().setEmail(email.text);

      await Get.offAll(Dashboard());
      // Get.to(Dashboard());
    } else {
      Flushbar(
        title: "Oops",
        message: "Already  Used Credentials",
        duration: Duration(seconds: 3),
      )..show(context);
    }

    loading = false;
    notifyListeners();
  }
}
