import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Widget weatherCard({
  required String cityName,
  required String weather,
  required double temperature,
  required double min,
  required double max,
  required String icon,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    elevation: 5,
    child: Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              cityName,
              style: GoogleFonts.actor(),
            ),
          ),
          Text(
            weather,
            style: GoogleFonts.actor(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$temperature°C ",
                style: const TextStyle(fontSize: 35),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.network("http://openweathermap.org/img/wn/$icon.png")
            ],
          ),
          Text(
            "min: $min°C / max: $max°C",
            style: GoogleFonts.actor(),
          )
        ],
      ),
    ),
  );
}
