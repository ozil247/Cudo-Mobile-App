// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import, non_constant_identifier_names, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new, unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../widget/small_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //drop down
  final items = ["Client", "Vendor"];
  String? value;

  //check box

  bool Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              SizedBox(
                width: 180,
              ),
              Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 40, right: 5),
                child: Image(image: AssetImage('assets/logo.png')),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              BigText(
                  color: AppColors.blueColor,
                  text: 'Sign Up',
                  size: 18,
                  fontWeight: FontWeight.bold),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              SmallText(
                  color: AppColors.blueColor,
                  size: 12,
                  text: 'Create Acoount',
                  fontWeight: FontWeight.normal)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Form(
              child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                width: 450,
                height: 50,
                margin: EdgeInsets.all(2),
                padding:
                    EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  hint: Text('User Type'),
                  value: value,
                  iconSize: 16,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.grey,
                  ),
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Name'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Phone'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Email'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Password'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Confirm Password'),
              ),
              SizedBox(
                height: 10,
              ),
              buildCheckbox(),
            ],
          )),
          SizedBox(
            height: 50,
          ),
          SizedBox(
                width: 350,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Sign Up",
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
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 100,
              ),
              Center(
                child: SizedBox(
                  child: SmallText(
                      text: 'Already have an account?',
                      size: 16,
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: SmallText(
                      color: AppColors.blueColor,
                      text: 'Login',
                      size: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    ));
  }

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
          'I  agree with your Terms and Condictions',
          style: TextStyle(
            color: AppColors.blueColor,
            fontSize: 15,
          ),
        ),
      );

   DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 16),
      ));
}
