import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  Widget drawerItem(String image, String title) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 15,
        ),
        Image(image: AssetImage(image)),
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Color.fromRGBO(95, 95, 95, 1)),
        )
      ],
    );
  }

  Widget drawerBottomItem(String title) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 70),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromRGBO(40, 97, 98, 1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/welcome_icon.png')),
        drawerItem(
            'assets/images/sidebar_images/document1.png', 'Create Contract'),
        SizedBox(
          height: 20,
        ),
        drawerItem('assets/images/sidebar_images/news.png', 'Blogs'),
        SizedBox(
          height: 20,
        ),
        drawerItem(
            'assets/images/sidebar_images/credit-card.png', 'Payment Methods'),
        SizedBox(
          height: 20,
        ),
        drawerItem('assets/images/sidebar_images/portable-document-format.png',
            'My Offers'),
        SizedBox(
          height: 20,
        ),
        drawerItem('assets/images/sidebar_images/bank.png', 'My Balance'),
        SizedBox(
          height: 20,
        ),
        drawerItem(
            'assets/images/sidebar_images/review.png', 'My Consultations'),
        SizedBox(
          height: 20,
        ),
        drawerItem('assets/images/sidebar_images/paper(2).png', 'My Contracts'),
        SizedBox(
          height: 20,
        ),
        drawerItem('assets/images/sidebar_images/phone(2).png', 'About App'),
        SizedBox(
          height: 30,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        drawerBottomItem('Upgrade to lowyer account'),
        SizedBox(
          height: 23,
        ),
        drawerBottomItem('Upgrade to trainer account'),
        SizedBox(
          height: 23,
        ),
        drawerBottomItem('Upgrade to student account'),
        SizedBox(
          height: 23,
        ),
        Divider(),
        Row(
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Image(image: AssetImage('assets/images/sidebar_images/logout.png')),
            SizedBox(
              width: 15,
            ),
            Text(
              'Logout',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(253, 115, 106, 1),
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
