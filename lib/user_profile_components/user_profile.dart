import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_profile_form.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Positioned(
            height: height * 0.17,
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Color(0xFF033435),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'User Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
            top: height * 0.12,
            height: height * 0.86,
            width: width,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 8,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'My Cases',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF9D9D9D)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '02',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFFC29A54)),
                                        ),
                                        Image.asset(
                                          'assets/images/document1.png',
                                          height: 23,
                                          width: 20,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Consulations',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF9D9D9D)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '04',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFFC29A54)),
                                        ),
                                        Image.asset(
                                          'assets/images/chat.png',
                                          height: 23,
                                          width: 20,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Contracts',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF9D9D9D)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '10',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFFC29A54)),
                                        ),
                                        Image.asset(
                                          'assets/images/contract.png',
                                          height: 23,
                                          width: 20,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Card(
                      elevation: 10,
                      child: UserProfileForm(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Balance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Text(
                              'Total Amount',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '240.00 SAR',
                              style: TextStyle(
                                color: Color(0xFFC29A54),
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Credit',
                                  style: TextStyle(
                                      color: Color(0xFF8A8A8A), fontSize: 18),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '(170 SAR)',
                                  style: TextStyle(
                                    color: Color(0xFFC29A54),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Depit',
                                  style: TextStyle(
                                      color: Color(0xFF8A8A8A), fontSize: 18),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '(70 SAR)',
                                  style: TextStyle(
                                    color: Color(0xFFC29A54),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(),
                            ListTile(
                              title: Text('Phone Call'),
                              subtitle: Text(
                                '15 Remain',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                              trailing: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC0FFE1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21BF73),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 10),
                                      child: Text(
                                        '10%',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              title: Text('Consultations'),
                              subtitle: Text(
                                '15 Remain',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                              trailing: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC0FFE1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21BF73),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 10),
                                      child: Text(
                                        '20%',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              title: Text('Messages'),
                              subtitle: Text(
                                '15 Remain',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                              trailing: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF3F3F3),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Empty',
                                      style: TextStyle(
                                        color: Color(0xFF838383),
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
