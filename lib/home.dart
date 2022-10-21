// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/plumbers.dart';
import 'package:flutter_application_1/vendors.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/navbar.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';

class Home extends StatefulWidget {
  List<Map<String, dynamic>> category = [
    {
      'title': 'Plumbing',
      'image': 'assets/plumbing.png',
    },
    {
      'title': 'Laundry',
      'image': 'assets/laundry.png',
    },
    {
      'title': 'A/C Technician',
      'image': 'assets/logo.png',
    },
    {
      'title': 'Electrician',
      'image': 'assets/electrician.png',
    },
    {
      'title': 'Painting',
      'image': 'assets/logo.png',
    },
    {
      'title': 'Barbing',
      'image': 'assets/barbing.png',
    },
    {
      'title': 'Cleaning',
      'image': 'assets/logo.png',
    },
    {
      'title': 'Car Wash',
      'image': 'assets/logo.png',
    },
  ];
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        title: Text(
          'HOME',
          style: TextStyle(color: AppColors.blueColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: ClipOval(
                      child: imageProfile(context),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  BigText(
                      color: AppColors.yellowColor,
                      text: 'Helllo, MIRACLE',
                      size: 14,
                      fontWeight: FontWeight.bold)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Search Services',
                    prefixIcon: Icon(Icons.search)),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 0, right: 0),
                height: 250,
                width: 500,
                child: Image(image: AssetImage('assets/home.png')),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  BigText(
                      color: AppColors.yellowColor,
                      text: 'Category',
                      size: 16,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    width: 220,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Categories()));
                    },
                    child: BigText(
                        color: AppColors.yellowColor,
                        text: 'See All',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                ),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/plumbing.png')),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Plumbers()));
                        },
                        child: SmallText(
                            color: AppColors.blueColor,
                            text: 'Plumbing',
                            size: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/laundry.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Laundry',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/electrician.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Electrician',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/barbing.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Barbing',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                ),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/plumbing.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Plumbing',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/laundry.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Laundry',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/electrician.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Electrician',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/barbing.png')),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                          color: AppColors.blueColor,
                          text: 'Barbing',
                          size: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

Widget imageProfile(context) {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/per.png'),
        )
      ],
    ),
  );
}
