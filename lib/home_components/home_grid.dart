import 'package:flutter/material.dart';
import 'package:lawyer_app/models/grid_item.dart';

class HomeGrid extends StatelessWidget {
  final List<GridItem> gredItem = [
    GridItem(
      image: 'assets/images/grid_images/ssa.png',
      title: 'Find                           a Lowyer',
    ),
    GridItem(
        image: 'assets/images/grid_images/02.png',
        title: 'Find a Legal Consultant'),
    GridItem(
        image: 'assets/images/grid_images/y6.png',
        title: 'Create                     a Contract'),
    GridItem(
        image: 'assets/images/grid_images/01.png',
        title: 'My                    Cases')
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
        children: gredItem
            .map(
              (item) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          item.image,
                        ),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
            .toList());
  }
}
