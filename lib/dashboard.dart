// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/notifications.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/vendors.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:flutter_html/flutter_html.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List pages = [
    Home(),
    Vendor(),
    Notifications(),
    Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.blueColor,
        unselectedItemColor: AppColors.blueColor.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Vendors', icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: 'Notifications', icon: Icon(Icons.notification_add)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}
