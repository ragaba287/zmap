import 'package:flutter/material.dart';
import 'package:zmap/widgets/textField.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100,
            ),
            Text('Sign in to get started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
            BTextField(),
            BTextField(),
            TextButton(
              onPressed: () {},
              child: Text('Forgot Password'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Login'),
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).accentColor,
                primary: Colors.white,
                minimumSize: Size(200, 50),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Get new Account.. SIGN UP'),
            )
          ],
        ),
      ),
    );
  }
}
