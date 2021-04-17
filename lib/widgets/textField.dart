import 'package:flutter/material.dart';

class BTextField extends StatefulWidget {
  @override
  _BTextFieldState createState() => _BTextFieldState();
}

class _BTextFieldState extends State<BTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
        ),
      )),
    );
  }
}
