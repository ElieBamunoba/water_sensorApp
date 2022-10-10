import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    margin: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    elevation: 5,
    child: Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Palette.cardbackgroundColor,
            Palette.cardbackgroundColor2,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                weather,
                style: GoogleFonts.actor(),
              ),
              Row(
                children: [
                  Image.network(
                    "http://openweathermap.org/img/wn/$icon.png",
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    "$temperature°C ",
                    style: const TextStyle(
                        fontSize: 25, color: Palette.textColor1),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.water_drop_outlined),
                        Text("59 %"),
                        Text('Humidity'),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.wind_power_outlined),
                        Text("59 %"),
                        Text('Humidity'),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.cloudy_snowing),
                        Text("59 %"),
                        Text('Humidity'),
                      ])
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              cityName,
              style: GoogleFonts.actor(),
            ),
          ),
          Text(
            DateFormat('EEEE, d MMM, yyyy').format(DateTime.now()),
            style: GoogleFonts.actor(),
          ),
        ],
      ),
    ),
  );
}
