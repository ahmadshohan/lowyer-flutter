import 'package:flutter/material.dart';

class UserProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Personal informations',
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              child: Stack(children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/ahmad.jpg'),
                ),
                Positioned(
                  top: 35,
                  right: 20,
                  child: Image.asset(
                    'assets/images/cam.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'Ahmad Shohan',
              decoration: InputDecoration(
                labelText: 'Your name',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB))),
                labelStyle: TextStyle(
                  color: Color(0xFFBBBBBB),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: '+905379823123',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB))),
                labelStyle: TextStyle(
                  color: Color(0xFFBBBBBB),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'ahmad.shohan523@gmail.com',
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB))),
                labelStyle: TextStyle(
                  color: Color(0xFFBBBBBB),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'Turkey-Istanbul',
              decoration: InputDecoration(
                labelText: 'Country',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB))),
                labelStyle: TextStyle(
                  color: Color(0xFFBBBBBB),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color: Color(0xFFC29A54),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 85),
                child: Text(
                  'Edit informations',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
