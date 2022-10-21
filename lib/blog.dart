// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/big_text.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A214F),
        title: const Text(
          'Blog',
          style: TextStyle(
            color: Color(0xffFF9E00),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage('assets/logo.png'))),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6), //background color
                  border: Border.all(color: Color(0xff1A214F) // border color
                      ),
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)),
                ),
                child: BigText(
                    color: Color(0xff1A214F),
                    text:
                        ' on the image or the video thumbnail and I will click specific pages in the search results, I will look for ',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6), //background color
                  border: Border.all(color: Color(0xff1A214F) // border color
                      ),
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)),
                ),
                child: BigText(
                    color: Color(0xff1A214F),
                    text:
                        ' on the image or the video thumbnail and I will click specific pages in the search results, I will look for ',
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
