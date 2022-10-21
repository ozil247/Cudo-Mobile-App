// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_us.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:flutter_application_1/blog.dart';
import 'package:flutter_application_1/contact_us.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              '',
              // style: TextStyle(
              //   color: Color.fromARGB(255, 223, 144, 40),
              // ),
            ),
            accountEmail: Text(
              '',
              // style: TextStyle(
              //   color: Color.fromARGB(255, 223, 144, 40),
              // ),
            ),
            decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.cover,
            )),
          ),
          Divider(thickness: 1.07, color: Color(0xff1A214F)),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Blog'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Blog()),
                ),
              );
            },
          ),
          Divider(
            thickness: 1.07,
            color: Color(0xff1A214F),
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ContactUs())));
            },
          ),
          Divider(thickness: 1.07, color: Color(0xff1A214F)),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AboutUs())));
            },
          ),
          Divider(thickness: 1.07, color: Color(0xff1A214F)),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {},
          ),
          Divider(thickness: 1.07, color: Color(0xff1A214F)),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('LogOut'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          Divider(thickness: 1.07, color: Color(0xff1A214F)),
        ],
      ),
    );
  }
}
