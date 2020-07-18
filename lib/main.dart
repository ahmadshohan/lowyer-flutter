import 'package:flutter/material.dart';
import 'file:///E:/dummy/lawyer_app/lib/user_profile_components/user_profile.dart';
import './screens/welcome_screen.dart';
import 'signup_components/signup_screen.dart';
import 'login_components/login_screen.dart';
import './screens/splash_screen.dart';
import 'home_components/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var a = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter loywer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.pink,
          buttonTheme: ButtonTheme.of(context).copyWith(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),),),
      home: UserProfile(),
      routes: {
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen()
      },
    );
  }
}
