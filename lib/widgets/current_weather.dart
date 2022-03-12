import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_sensor/widgets/weather_card.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      children: [
        weatherCard(),
        Icon(
          icon,
          color: Colors.orange,
        ),
      ],
    ),
  );
}
