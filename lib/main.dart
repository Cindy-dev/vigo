import 'package:flutter/material.dart';
import 'package:igoplace/screens/home.dart';
import 'package:igoplace/screens/login.dart';
import 'package:igoplace/screens/onboarding.dart';
import 'package:igoplace/screens/signup.dart';
import 'package:igoplace/widget/tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(), 
      routes: {
        Signup.routeName: (ctx) => Signup(),
        Login.routeName: (ctx) => Login(),
        Onboarding.routeName: (ctx) => Onboarding(), 
        HomeScreen.routeName: (ctx) => HomeScreen(),
        Tabbar.routeName: (ctx) => Tabbar(), 
      },
    );
  }
}
