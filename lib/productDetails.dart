import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomm_app/Reuseables/DetailButton.dart';


class ProductDetails extends StatefulWidget {
  final productDetailsPics;
  final productDetailsName;
  final productDetailsPrice;
  final productDetailsOldPrice;
  ProductDetails({this.productDetailsPics, this.productDetailsName, this.productDetailsPrice, this.productDetailsOldPrice});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(widget.productDetailsPics),
            ),
          ),
          Container(
            color: Colors.white70,
              child: ListTile(
                title: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(widget.productDetailsName, style: TextStyle(fontSize: 30.0),),
                    Container(
                      margin: EdgeInsets.only(left: 50.0),
                        child: Text('\$${widget.productDetailsOldPrice}', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.black.withOpacity(0.2)),))
                  ],
                ),
                trailing: Text('\$${widget.productDetailsPrice}',style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 30.0),),
              ),
          ),
          Row(
            children: <Widget>[
              DetailButton(
                text: 'Size',
              ),
              DetailButton(
                text: 'Quantity',
              ),
              DetailButton(
                text: 'color',
              ),
            ],
          ),

        ],
      ),

    );
  }
}



