import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  BlueButton({
    this.text = 'Button',
    this.onPressed,
  });
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: Theme.of(context).accentColor,
        textStyle: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
