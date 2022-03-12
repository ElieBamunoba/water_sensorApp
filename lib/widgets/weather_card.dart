import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget weatherCard() {
  return Card(
    margin: EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    elevation: 5,
    child: Container(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "Athi River",
              style: TextStyle(fontFamily: 'flutterfont'),
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
          Text("Overcast clouds"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "9 C",
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
            "min:8 C / max: 11 C",
          )
        ],
      ),
    ),
  );
}
