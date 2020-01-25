import 'package:flutter/material.dart';


class DetailButton extends StatelessWidget {
  final text;


  DetailButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            elevation: 0.0,
            onPressed: (){},
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(text),
                ),
                Expanded(
                  child: IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}