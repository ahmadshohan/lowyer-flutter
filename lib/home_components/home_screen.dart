import 'package:flutter/material.dart';
import '../widgets/appdrawer.dart';
import 'home_grid.dart';

class HomeScreen extends StatelessWidget {
  void selectPage(int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: [
              Container(
                height: 270,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(140)),
                  gradient: RadialGradient(colors: [
                    Color(0xFF0B4045),
                    Color(0xFF0A1314),
                  ], radius: 1.2),
                ),
              ),
              Container(
                  width: double.infinity,
                  // color: Colors.black,
                  margin: EdgeInsets.only(left: 30, top: 45, right: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: Image.asset(
                              'assets/images/home_images/burger_menu.png',
                              height: 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Image.asset(
                            'assets/images/home_images/notification(1).png',
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Hello,ahmad',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 40,
                            color: Colors.white,
                            height: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text('What can i',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            width: 135,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                'assets/images/home_images/ahmad.jpg'),
                          ),
                        ],
                      ),
                      Text(
                        'do for you',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'today?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
            ]),
            Expanded(child: HomeGrid())
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: selectPage,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black38,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/botton_bar/home1.png'),
                  ),
                  title: Text('Home')),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/botton_bar/bag2.png'),
                      color: Colors.amber),
                  title: Text('Home')),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/botton_bar/message3.png'),
                      color: Colors.amber),
                  title: Text('data')),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/botton_bar/report4.png'),
                      color: Colors.amber),
                  title: Text('data')),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/botton_bar/sitting5.png'),
                      color: Colors.amber),
                  title: Text('data'))
            ]));
  }
}
