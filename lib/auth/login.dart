// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, unnecessary_new, unused_import, prefer_const_constructors_in_immutables, unnecessary_this, must_call_super, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/forgot_password.dart';
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
  // for password visibility & invisibility
  bool _passwordVisible = true;
   
  //  for check box
  bool Value = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    // padding: EdgeInsets.only(bottom: -10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          color: AppColors.blueColor,
                          text: 'Log In',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.blueColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.unsubscribe_outlined,
                      color: Color(0xff1A214F),
                      ),
                      onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText:!_passwordVisible, 
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.blueColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                      color: Color(0xff1A214F),
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                  ),
                ),
              ),
              // Testing a CheckBox start here
              
              // tetsting a check box ending here
              SizedBox(
                height: 10,
              ),
              buildCheckbox(),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Login",
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.normal,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.yellowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                height: 20,
              )
            ]),
          ),
        ),
      ),
    );
  }

  // for check box
  Widget buildCheckbox() => ListTile(
        onTap: () {
          setState(() {
            this.Value = !Value;
          });
        },
        leading: Checkbox(
            value: Value,
            onChanged: (bool? value) {
              setState(() {
                this.Value = Value;
              });
            }),
        title: Text(
          'Remember Me',
          style: TextStyle(
            color: AppColors.blueColor,
            fontSize: 15,
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> ForgotPassword(),
              ) 
              );
          },
          child: SmallText(
                        color: AppColors.blueColor,
                        text: 'Forgot Password?',
                        fontWeight: FontWeight.bold,
                        size: 18,
        
                        ),
        )
                ,
      );
}
