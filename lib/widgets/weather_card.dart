import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:water_sensor/widgets/gradient_color.dart';

Widget weatherCard({
  required String cityName,
  required String weather,
  required double temperature,
  required double min,
  required double max,
}) {
  return Card(
    margin: EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    elevation: 5,
    child: Container(
      decoration: gradient(),
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              cityName,
            ),
          ),
          Text(
            DateFormat('EEEE, d MMM, yyyy').format(DateTime.now()),
          ),
          const Divider(
            height: 30,
            color: Colors.black,
            thickness: 0.680,
            endIndent: 20,
            indent: 20,
          ),
          Text(weather),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$temperature C ",
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.wb_sunny_rounded,
                color: Colors.amberAccent[200],
                size: 45,
              )
            ],
          ),
          Text(
            "min: $min C / max: $max C",
          )
        ],
      ),
    ),
  );
}
