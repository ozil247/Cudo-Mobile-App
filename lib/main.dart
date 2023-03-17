// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:flutter_application_1/auth/reset_password.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/onboarding.dart';
import 'package:flutter_application_1/select_state.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:flutter_application_1/plumbers.dart';
import 'package:flutter_application_1/view_model/auth_vm.dart';
import 'package:flutter_application_1/view_model/register_vm.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/view_model/resend_verification_email_vm.dart';
import 'package:flutter_application_1/widget/getit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


=======
import 'package:flutter_application_1/widget/getit.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthVm()),
        ChangeNotifierProvider(create: (_) => RegisterVm()),
<<<<<<< HEAD
        ChangeNotifierProvider(create: (_) => ResendVerificationEmailVm()),
=======
>>>>>>> e6d2e60b728af7baa3eabb11f4fdeafdefc9d0b5
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CUDO SERVICES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          // ignore: prefer_const_constructors
          headline1: TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.w200,
          ),
          headline2: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C1A30),
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 12,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
        ),
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
