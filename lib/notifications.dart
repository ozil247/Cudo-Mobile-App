// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        backgroundColor: AppColors.blueColor,
        title: const Text(
          'NOTIFICATIONS',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
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
                          text: 'Click To Read',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          ' Notifications Below;',
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
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blueColor,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: AppColors.blueColor,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                      title: BigText(
                          text: "New Features On This App",
                          fontWeight: FontWeight.bold),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request For A Service",
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blueColor,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: AppColors.blueColor,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                      title: BigText(
                          text: "New Features On This App",
                          fontWeight: FontWeight.bold),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request For A Service",
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blueColor,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: AppColors.blueColor,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                      title: BigText(
                          text: "New Features On This App",
                          fontWeight: FontWeight.bold),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request For A Service",
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blueColor,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: AppColors.blueColor,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                      title: BigText(
                          text: "New Features On This App",
                          fontWeight: FontWeight.bold),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request For A Service",
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blueColor,
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: AppColors.blueColor,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                      title: BigText(
                          text: "New Features On This App",
                          fontWeight: FontWeight.bold),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request For A Service",
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.yellowColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
