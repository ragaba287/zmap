import 'package:flutter/material.dart';
import 'package:zmap/registration/login.dart';
import 'package:zmap/widgets/blueButton.dart';
import 'package:zmap/widgets/textField.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 100,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Sign up to get started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    BTextField(
                      hint: 'Username',
                    ),
                    SizedBox(height: 10),
                    BTextField(
                      hint: 'Email',
                    ),
                    SizedBox(height: 10),
                    BTextField(
                      hint: 'Phone',
                    ),
                    SizedBox(height: 10),
                    BTextField(
                      hint: 'Password',
                      isObscure: true,
                    ),
                    SizedBox(height: 10),
                    BlueButton(
                      text: 'SIGN UP',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Have Account ... LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
