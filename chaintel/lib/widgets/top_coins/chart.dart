import 'dart:math';
import 'package:chaintel/constants.dart';
import 'package:flutter/material.dart';

class ChartTopCoin extends StatelessWidget {
  final List<double> data;

  ChartTopCoin(this.data);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipPath(
        clipper: ChartClipper(
          data: data,
          maxValue: data.reduce(max),
        ),
        child: Container(
          height: 74.0,
          width: 130.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradientColors,
          )),
        ),
      ),
    );
  }
}

class ChartClipper extends CustomClipper<Path> {
  final double maxValue;
  final List<double> data;

  ChartClipper({required this.maxValue, required this.data});

  @override
  Path getClip(Size size) {
    double sectionWidth = size.width / (data.length - 1);

    Path path = Path();

    path.moveTo(0, size.height);

    for (int i = 0; i < data.length; i++) {
      path.lineTo(
          i * sectionWidth, size.height - size.height * (data[i] / maxValue));
    }

    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
