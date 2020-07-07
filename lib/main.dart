import 'package:flutter/material.dart';
import 'package:food_app/pages/login.dart';
import 'package:food_app/pages/welcome.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
