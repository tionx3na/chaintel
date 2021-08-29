import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsTrendCoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 60.0,
      width: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
            margin: EdgeInsets.all(10.0),
            child: Text("BTC"),
          ),
          Text(
            "12.32%",
            style: TextStyle(color: Colors.green),
          ),
          FaIcon(
            FontAwesomeIcons.arrowUp,
            color: Colors.green,
            size: 15.0,
          ),
        ],
      ),
    );
  }
}
