// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_model/resend_verification_email_vm.dart';
import 'package:provider/provider.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({ Key? key }) : super(key: key);

  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VERIFY YOUR EAMIL"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            'assets/verfnew.png',
            scale: 1,
          ),
          Container(
            width: 350,
            height: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 1, 44, 79),
                    blurRadius: 10,
                    offset: Offset(0, 4))
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'A VERIFICATION EMAIL HAS BEEN SENT TO YOUR EMAIL ADDRESS, PLEASE KINDLY VERIFY YOUR EMAIL TO GAIN FULL ACCESS TO YOUR SUBSCRIPTION PAGE.',
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                 Provider.of<ResendVerificationEmailVm>(context).resendVerificationEmail(context);
                },
                child: Text(
                  'Resend Verification',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              SizedBox(width: 5,),
              Text(
                'If Email is not received ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
                'Once you have Verified your email,kindly exit the App and login again',
                style: Theme.of(context)
                .textTheme.bodyText1,
                
              ),
          SizedBox(height:50),
        ],
      )),
    );
  }
}