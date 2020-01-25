import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget imageCarousel = Container(
    height: 200.0,
    child: Carousel(
        boxFit: BoxFit.fitHeight,

        images: [
          AssetImage("images/b1.jpg"),
          AssetImage('images/L1.jpg'),
          AssetImage("images/j1.jpg"),
          AssetImage("images/p3.jpg")
        ],
        autoplay: false,
        dotSize: 2.0,
        indicatorBgPadding: 2.0
    )
);