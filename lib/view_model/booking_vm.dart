// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, unused_import, use_build_context_synchronously, non_constant_identifier_names, prefer_const_constructors

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/booking.dart';
import 'package:flutter_application_1/models/profile_response.dart';
import 'package:flutter_application_1/services/server.dart';
import 'package:get/get.dart';

class BookingVm extends ChangeNotifier {
  final name = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final message = TextEditingController();

  Server server = Server();

  bool loading = false;

  Future booking(BuildContext context, vendorId) async {
    loading = true;
    notifyListeners();

    final response = await server.postData({
      'name': name.text,
      'phone': phone.text,
      'address': address.text,
      'message': message.text,
    }, '/booking');

    final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    if (result['success'] == true) {
      Flushbar(
        title: "Done",
        message: "Booking Successful",
        duration: const Duration(seconds: 3),
      )..show(context);
      // await Get.offAll(Booking());
    } else {
      Flushbar(
        title: "Error",
        message: "Unsuccessful booking",
        duration: const Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }
}
