// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signup.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

import '../widget/big_text.dart';
import '../widget/small_text.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 100,
              ),
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(
                height: 70,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            color: AppColors.yellowColor,
                            text: 'LOGIN',
                            fontWeight: FontWeight.bold),
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.blueColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  suffixIcon: Icon(
                    Icons.unsubscribe_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SmallText(
                      color: AppColors.blueColor,
                      text: 'Remember Me',
                      fontWeight: FontWeight.normal),
                  SizedBox(
                    width: 220,
                  ),
                  SmallText(
                      color: AppColors.blueColor,
                      text: 'Forgot Password?',
                      fontWeight: FontWeight.normal)
                ],
              ),
              SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: Container(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: AppColors.yellowColor,
                    child: BigText(
                      text: "Login",
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.normal,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  BigText(
                    text: "Don't have an account?",
                    size: 16,
                    color: AppColors.blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Signup(),
                      ));
                    },
                    child: BigText(
                      color: AppColors.blueColor,
                      text: "Signup",
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
