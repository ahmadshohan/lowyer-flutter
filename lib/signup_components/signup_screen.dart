import 'package:flutter/material.dart';
import 'signup_form.dart';
import '../widgets/logo_row.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup-screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/auth_background.png'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            LogoRow(),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.amber, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Hello! please fill out the                                               folowing fields ',
                      style: TextStyle(color: Colors.white54, fontSize: 15)),
                  SizedBox(
                    height: 9,
                  ),
                  SignUpForm()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
