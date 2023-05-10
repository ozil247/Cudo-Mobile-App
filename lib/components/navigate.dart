// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class Navigate extends StatefulWidget {
  const Navigate({ Key? key }) : super(key: key);

  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  List<String> categories = ['Plumber', 'Laundry','Electrician','Carpenter','Welder','Cleaner','Cook','Barbing'];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildcategories(index),
        ),
    );
  }

  Widget buildcategories(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: selectedIndex == index ? AppColors.blueColor : Color(0xffFF9E00),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              height: 2,
              width: 30,
              color: selectedIndex == index ? AppColors.blueColor: Colors.transparent,
            )
          ],
        ),
        
      ),
    );
  }
}