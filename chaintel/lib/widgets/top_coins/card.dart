import 'package:flutter/material.dart';
import 'package:chaintel/widgets/top_coins/chart.dart';
import 'package:chaintel/widgets/top_coins/details.dart';
import 'package:chaintel/constants.dart';

class CardTopCoin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          DetailsTopCoin(),
          ChartTopCoin(data),
        ],
      ),
    );
  }
}
