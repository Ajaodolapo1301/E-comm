import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomm_app/productDetails.dart';


class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List productList = [
    {
      'name' : 'babe',
      'picture': 'images/b1.jpg',
      'old_price': "100",
      'price' : '70',
    },
    {
      'name' : 'baby',
      'picture': 'images/j1.jpg',
      'old_price': "100",
      'price' : '70',
    },
    {
      'name' : 'sweet',
      'picture': 'images/L1.jpg',
      'old_price': "100",
      'price' : '70',
    },
    {
      'name' : 'love',
      'picture': 'images/p3.jpg',
      'old_price': "100",
      'price' : '70',
    },
    {
      'name' : 'yes',
      'picture': 'images/p3.jpg',
      'old_price': "100",
      'price' : '70',
    },

  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),

          itemBuilder: (BuildContext context, int index ){
              return singleProduct(
              productName: productList[index]['name'],
              productOldPrice: productList[index]['old_price'],
                  productPics: productList[index]['picture'],
                productPrice: productList[index]['price']
              );
          }
          ),
    );
  }

  Widget singleProduct({String productName, String productPrice, String productPics, String productOldPrice}) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails(
                productDetailsPics: productPics,
                productDetailsName: productName,
                productDetailsPrice: productPrice,
                productDetailsOldPrice: productOldPrice,
              )));
            },
            child: GridTile(
              child: Image.asset(productPics, fit: BoxFit.cover),
              footer: Container(
                color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(productName, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                    child: Text('\$$productPrice', style: TextStyle(color: Colors.red),textAlign: TextAlign.end,),
                  )
                ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }
}






