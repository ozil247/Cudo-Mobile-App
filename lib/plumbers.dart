// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, unused_import, duplicate_ignore, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_1/booking.dart';
// ignore: unused_import
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

import 'dashboard.dart';

class Plumbers extends StatefulWidget {
  const Plumbers({super.key});

  @override
  State<Plumbers> createState() => _PlumbersState();
}

class _PlumbersState extends State<Plumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: const Text(
          'PLUMBERS',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
                  ),

                  // child: Image(image: AssetImage('assets/ace.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 50),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFF9E00),
                      ),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Ace John',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                Text(
                                  'Mile 4,Port Harcourt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          // ignore: sort_child_properties_last
                          child: SmallText(
                            text: "Request A Quote",
                            color: Color(0xffFF9E00),
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1A214F),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
                  ),

                  // child: Image(image: AssetImage('assets/ace.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 50),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFF9E00),
                      ),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Ace John',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                Text(
                                  'Mile 4,Port Harcourt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          // ignore: sort_child_properties_last
                          child: SmallText(
                            text: "Request A Quote",
                            color: Color(0xffFF9E00),
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1A214F),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
                  ),

                  // child: Image(image: AssetImage('assets/ace.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 50),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFF9E00),
                      ),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Ace John',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                Text(
                                  'Mile 4,Port Harcourt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          // ignore: sort_child_properties_last
                          child: SmallText(
                            text: "Request A Quote",
                            color: Color(0xffFF9E00),
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1A214F),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
                  ),

                  // child: Image(image: AssetImage('assets/ace.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 50),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFF9E00),
                      ),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Ace John',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                Text(
                                  'Mile 4,Port Harcourt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          // ignore: sort_child_properties_last
                          child: SmallText(
                            text: "Request A Quote",
                            color: Color(0xffFF9E00),
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1A214F),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
                  ),

                  // child: Image(image: AssetImage('assets/ace.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 50),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFF9E00),
                      ),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Ace John',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                                Text(
                                  'Mile 4,Port Harcourt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1A214F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          // ignore: sort_child_properties_last
                          child: SmallText(
                            text: "Request A Quote",
                            color: Color(0xffFF9E00),
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1A214F),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
