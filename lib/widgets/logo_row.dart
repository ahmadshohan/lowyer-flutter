import 'package:flutter/material.dart';
class LogoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/images/auth_1.png',
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            );
  }
}