import 'package:flutter/material.dart';

class BTextField extends StatefulWidget {
  BTextField({
    this.hint = 'Hint Text',
    this.prefixIcon,
    this.suffixIcon,
    this.isObscure = false,
  });
  final String hint;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final bool isObscure;
  @override
  _BTextFieldState createState() => _BTextFieldState();
}

class _BTextFieldState extends State<BTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObscure,
      style: TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0x80121212),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Color(0xffA2A2A2)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide(color: Color(0x57575757), width: 1)),
        // prefixIcon: Icon(widget.prefixIcon.icon?? Icons.verified_user,
        //     color: Color(0x70FFFFFF)),
        // suffixIcon: Icon(widget.suffixIcon.icon ?? Icons.verified_user,
        //     color: Color(0x70FFFFFF)),
      ),
    );
  }
}
