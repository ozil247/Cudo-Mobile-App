// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, use_build_context_synchronously, prefer_const_constructors, unused_import, unrelated_type_equality_checks

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/auth/verify_email.dart';
=======
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
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
<<<<<<< HEAD
  
=======
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5

  Server server = Server();

  bool loading = false;

<<<<<<< HEAD
  Future<void> register(BuildContext context)async {
=======
  Future<void> register(BuildContext context) async {
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
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
<<<<<<< HEAD
    if (response.statusCode == 200) {
     
=======
    if (response.statusCode == true) {
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
      Flushbar(
        title: "Oops",
        message: parsed['errors'].toString(),
        duration: Duration(seconds: 3),
      )..show(context);

      loading = false;
      notifyListeners();

      return;
    }

    final result = RegisterResponse.fromJson(parsed);
<<<<<<< HEAD
    if (result.statusCode == 200) {
=======
    print(result.statusCode);
    if (result.statusCode == true) {
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
      await getIt.get<LocalStorageService>().setName(result.data?.name);
      await getIt.get<LocalStorageService>().setToken(result.token ?? '');
      await getIt.get<LocalStorageService>().setEmail(email.text);

      await Get.offAll(Dashboard());
<<<<<<< HEAD
      // Get.to(Dashboard());
    } else {
      Flushbar(
        title: "Oops",
        message: "Incorrect credentials",
=======
    } else {
      Flushbar(
        title: "Oops",
        message: "Already Used credentials",
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
        duration: Duration(seconds: 3),
      )..show(context);
    }

    loading = false;
    notifyListeners();
  }
}
