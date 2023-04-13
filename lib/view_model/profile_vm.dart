// ignore_for_file: avoid_single_cascade_in_expression_statements, avoid_print, prefer_const_constructors, use_build_context_synchronously, unused_import, unrelated_type_equality_checks

import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/models/login_response.dart';
import 'package:flutter_application_1/models/profile_response.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/services/local_storage_service.dart';
import 'package:flutter_application_1/services/server.dart';
import 'package:flutter_application_1/widget/getit.dart';
import 'package:get/get.dart';

class ProfileVm extends ChangeNotifier {
  final phone = TextEditingController();
  bool loading = false;
  final server = Server();

  Future getProfile(BuildContext context) async {
    var res = await server.getData('/profile');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result = ProfileResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }

  Future<void>updateProfile(BuildContext context) async {
    loading = true;
    notifyListeners();

    final response = await server.postData({
      'phone': phone.text,
    }, '/update-profile');

    final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    if (result['success'] == true) {
      Flushbar(
        title: "Done",
        message: "Profile updated",
        duration: const Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }
}
