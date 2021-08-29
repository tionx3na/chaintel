import 'package:flutter/material.dart';

class DetailsTopCoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 45.0,
      width: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Image.asset("assets/images/btc.png"),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text("BTC"),
          ),
        ],
      ),
    );
  }
}
