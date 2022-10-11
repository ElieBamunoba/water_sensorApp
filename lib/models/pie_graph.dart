import 'package:flutter/material.dart';

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

final List<ChartData> chartData = [
  ChartData('Optimal', 40, const Color.fromARGB(255, 140, 201, 181)),
  ChartData('Serious Attention', 17.1, const Color.fromARGB(0, 236, 178, 178)),
  ChartData('Saturated/Full', 23.5, const Color.fromARGB(255, 111, 188, 211)),
  ChartData('N/A', 19.4, const Color.fromARGB(255, 224, 186, 135)),
];
