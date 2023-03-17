// ignore_for_file: avoid_single_cascade_in_expression_statements, prefer_const_constructors, use_build_context_synchronously

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../models/resend_verification_email_response.dart';
import '../services/server.dart';

class ResendVerificationEmailVm extends ChangeNotifier {
 final server = Server();

  Future resendVerificationEmail(BuildContext context)async{
   var res = await server.getData('/user/resend-verification-email');
   final Map<String, dynamic> parsed = json.decode(res.body);
   final result = ResendVerificationEmailResponse.fromJson(parsed);
   Flushbar(
        title: "Oops",
        message: "Verification Email Sent",
        duration: Duration(seconds: 3),
      )..show(context);
   return result;
  }
}