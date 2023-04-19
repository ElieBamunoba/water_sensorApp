import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget SensorInfo({
  required String title,
  required String amount,
  required double width,
  required Color backgroundColor,
  required Color txtColor,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(25),
    ),
    width: width * 30 / 100,
    height: width * 30 / 100,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            amount,
            style: TextStyle(
              color: txtColor,
              fontSize: 25,
            ),
          ),
          Text(title, style: TextStyle(color: txtColor))
        ],
      ),
    ),
  );
}
