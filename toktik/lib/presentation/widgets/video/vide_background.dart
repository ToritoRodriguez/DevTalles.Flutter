import 'package:flutter/material.dart';

class VideBackground extends StatelessWidget {

  final List<Color> colors;
  final List<double> stops;

  const VideBackground({
    super.key, 
    this.colors = const [
      Colors.transparent,
      Colors.black,
    ],
    this.stops = const [
      0.0,
      1.0
    ]
  }) : assert(
    colors.length == stops.length,
    'The length of colors and stops must be the same'
  );

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        )
      )
    );
  }
}