import 'package:flutter/material.dart';
import 'file:///E:/dummy/lawyer_app/lib/login_components/login_screen.dart';
import 'file:///E:/dummy/lawyer_app/lib/signup_components/signup_screen.dart';
import '../widgets/appdrawer.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        body: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/welcome.png'),
                    fit: BoxFit.fill)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 70),
                      height: 100,
                      width: 150,
                      child: Image.asset(
                        'assets/images/welcome_icon.png',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 270,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(194, 154, 84, 1),
                        child: Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SignUpScreen.routeName);
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromRGBO(194, 154, 84, 0.7)),
                            borderRadius: BorderRadius.circular(10)),
                        textColor: Colors.white,
                        color: Color.fromRGBO(177, 140, 76, 0),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        }),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Or Continue With Social Media',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 110,
                            child: RaisedButton.icon(
                                icon: Image(
                                    image: AssetImage(
                                        'assets/images/facebook.png')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textColor: Colors.white,
                                color: Color.fromRGBO(66, 103, 178, 1),
                                label: Text(
                                  'Facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 110,
                            child: RaisedButton.icon(
                                icon: Image(
                                    image:
                                        AssetImage('assets/images/google.png')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textColor: Colors.white,
                                color: Color.fromRGBO(219, 68, 55, 1),
                                label: Text(
                                  'Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15),
                                ),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 110,
                            child: RaisedButton.icon(
                                icon: Image(
                                    image:
                                        AssetImage('assets/images/apple.png')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textColor: Colors.black87,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                label: Text(
                                  'Apple',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15),
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])));
  }
}
