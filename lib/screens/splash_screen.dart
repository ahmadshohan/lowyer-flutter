import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lawyer_app/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed(WelcomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
                  Color(0xFF0B4045),
                  Color(0xFF0A1314),
                ], radius: 1.2),
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: Image(image: AssetImage('assets/images/splash.png')))
          ],
        ),
      ),
    );
  }
}
