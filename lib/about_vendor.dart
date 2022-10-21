import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class AboutVendor extends StatefulWidget {
  const AboutVendor({super.key});

  @override
  State<AboutVendor> createState() => _AboutVendorState();
}

class _AboutVendorState extends State<AboutVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        title: const Text(
          'About Vendor',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                BigText(
                    text: 'Category:',
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
                SizedBox(
                  width: 10,
                ),
                BigText(
                    text: 'Plumber:',
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                BigText(
                    text: 'Phone:',
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 10,
                ),
                BigText(
                    text: '09012347658:',
                    // ignore: prefer_const_constructors
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                BigText(
                    text: 'Service Location:',
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
                SizedBox(
                  width: 10,
                ),
                BigText(
                    text: 'Agip:',
                    color: Color(0xff1A214F),
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: 70,
            ),

            SizedBox(
              width: 350,
              height: 50,
              child: Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  color: Color(0xff1A214F),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutVendor()));
                  },
                  child: BigText(
                    size: 16,
                    text: "Book Now",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
