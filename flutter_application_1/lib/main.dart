import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Page.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomPage()
    );
  }
}
