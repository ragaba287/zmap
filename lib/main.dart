import 'package:flutter/material.dart';
import 'package:zmap/registration/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZMap',
      theme: ThemeData(
        primaryColor: Color(0xff055680),
        accentColor: Color(0xff055680),
      ),
      home: Login(),
    );
  }
}
