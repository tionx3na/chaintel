import 'package:flutter/material.dart';
import 'package:chaintel/widgets/trending_coins/bottomdetails.dart';
import 'package:chaintel/widgets/trending_coins/details.dart';
import 'package:chaintel/constants.dart';

class CardTrendingCoin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      margin: EdgeInsets.all(5.0),
      color: Colors.white,
      child: Column(
        children: [
          DetailsTrendCoin(),
         BottomDetailsTrendCoin(),
        ],
      ),
    );
  }
}
