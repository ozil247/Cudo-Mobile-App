// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_vendor.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        title: const Text('Booking',
        style: TextStyle(color: Color(0xffFF9E00)),
        ),
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: Column(children: [
                Image(image: AssetImage('assets/logo.png')),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BigText(
                        color: AppColors.blueColor,
                        text: 'Client Detail',
                        fontWeight: FontWeight.bold)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BigText(text: 'Type A Mesaage Here', fontWeight: FontWeight.bold,color: AppColors.blueColor,),
            TextField(
              minLines: 2,
              maxLines: 10,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Enter a Message',
                hintStyle: TextStyle(color: AppColors.blueColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            )
          ],
        ),
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AboutVendor()));
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Submit",
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.blueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
