import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    double mediaHeight = MediaQuery.of(context).size.height;

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: mediaWidth * 2 / 100,
        vertical: mediaHeight * 2 / 100,
      ),
      elevation: 5,
      child: Container(
        width: mediaWidth * 90 / 100,
        height: mediaHeight * 25 / 100,
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
}
