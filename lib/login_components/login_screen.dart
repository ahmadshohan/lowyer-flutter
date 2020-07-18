import 'package:flutter/material.dart';
import 'login_form.dart';
import '../widgets/logo_row.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/auth_background.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            LogoRow(),
            SizedBox(
              height: 75,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.amber, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                      'Hello! please fill out the                                               folowing fields ',
                      style: TextStyle(color: Colors.white54, fontSize: 15)),
                ),
                SizedBox(
                  height: 9,
                ),
                LoginForm()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
