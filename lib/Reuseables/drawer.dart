import 'package:flutter/material.dart';
import 'ReuseableList.dart';
Widget drawer = Drawer(
  child: ListView(
    children: <Widget>[
      UserAccountsDrawerHeader(accountName: Text('Balqees'), accountEmail: Text('balqees@gmail.com'),
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(backgroundImage: AssetImage('images/L1.jpg'),),
        ),
      ),

      reusableList(
        title: 'Home',
        leading: Icons.home),
      reusableList(
          title: 'My order',
          leading: Icons.shopping_basket),
      reusableList(
          title: 'Shopping Cart',
          leading: Icons.shopping_cart),
      reusableList(
          title: 'Favorites',
          leading: Icons.favorite),
      Divider(),
      reusableList(
          title: 'Setting',
          leading: Icons.settings),
      reusableList(
          title: 'About',
          leading: Icons.help),
    ],
  ),
) ;

