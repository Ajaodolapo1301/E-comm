import 'package:ecomm_app/Reuseables/Product.dart';
import 'package:flutter/material.dart';
import 'package:ecomm_app/Reuseables/carousel.dart';
import 'package:ecomm_app/Reuseables/drawer.dart';
import 'package:ecomm_app/Reuseables/Categories.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dolly'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white,onPressed: () {},)
        ],
      ),
// ===== THE DRAWER ====
      drawer: drawer,

      body: Column(
        children: <Widget>[
          // == THE IMAGE CAROUSEL====
          imageCarousel,
      Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 8.0),
          child: Text('Categories', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
        Categories(),
//
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0,top: 20.0, bottom: 10.0),
              child: Text('Recent Products', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),

      Flexible(child: Product()),



     ],

),
);



  }
}
