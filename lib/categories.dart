// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        title: const Text(
          'Category',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
        iconTheme: IconThemeData(color: AppColors.yellowColor),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
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
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 5,
                    ),
                    SmallText(
                        color: AppColors.yellowColor,
                        text: 'Plumbing',
                        size: 10,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage('assets/laundry.png')),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 5,
                    ),
                    SmallText(
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
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
                        color: AppColors.yellowColor,
                        text: 'Electrician',
                        size: 10,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Image(image: AssetImage('assets/barbing.png')),
                    SizedBox(
                      height: 5,
                    ),
                    SmallText(
                        color: AppColors.yellowColor,
                        text: 'Barbing',
                        size: 10,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
