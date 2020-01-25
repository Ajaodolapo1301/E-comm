import 'package:flutter/material.dart';

InkWell reusableList({String title, IconData leading}) {
  return InkWell(
    onTap: (){},
    child: ListTile(
      selected: true,
      title: Text(title) ,
      leading: Icon(leading) ,


    ),
  );
}