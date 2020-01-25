import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          buildCategories(
            image: 'images/b1.jpg',
            subtitle: 'Me'
          ),
          buildCategories(
            image:  'images/j1.jpg',
            subtitle: 'Also me'
          ),
          buildCategories(
              image: 'images/j1.jpg',
              subtitle: 'Me'
          ),
          buildCategories(
              image: 'images/b1.jpg',
              subtitle: 'Me'
          ),
          buildCategories(
              image: 'images/b1.jpg',
              subtitle: 'Me'
          ),
        ],
      ),
    );
  }
}












InkWell buildCategories({String image,  String subtitle}) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 80.0,
      child: ListTile(
        title: Container(
            height: 100.0,
            width: 80.0,
            child: Image.asset(image)
        ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(subtitle, style: TextStyle(fontSize: 12.0),),
        ),
      ),
    ),
  );
}


