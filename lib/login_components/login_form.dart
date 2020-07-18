import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.grey, width: 0.1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.amber, width: 0.1)),
                  filled: true,
                  fillColor: Colors.white10),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.grey, width: 0.1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.amber, width: 0.1)),
                  filled: true,
                  fillColor: Colors.white10),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text("Forget Password?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 13,
                            color: Colors.white)))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.amberAccent,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {}),
            )
          ],
        )),
      ),
    ]));
  }
}
