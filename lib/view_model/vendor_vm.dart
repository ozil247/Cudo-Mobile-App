// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/vendor_repsonse.dart';
import 'package:flutter_application_1/services/server.dart';

class VendorVm extends ChangeNotifier {
final server = Server();


Future getVendor(BuildContext context) async {
    var res = await server.getData('/vendor_api');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result = VendorResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }
}
