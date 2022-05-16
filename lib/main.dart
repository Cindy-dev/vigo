import 'package:flutter/material.dart';
import 'package:igoplace/screens/home.dart';
import 'package:igoplace/screens/login.dart';
import 'package:igoplace/screens/onboarding.dart';
import 'package:igoplace/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

