import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'model/const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dota 2 Heroes',
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: Color(0xFFF9F9F9),
      ),
      home: MainScreen(),
    );
  }
}
