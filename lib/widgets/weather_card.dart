import 'package:flutter/material.dart';

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
        height: mediaHeight * 20 / 100,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: const Text(
                "Athi River",
                style: TextStyle(fontFamily: 'flutterfont'),
              ),
            ),
            const Text("Tuesday, March 9"),
            const Divider(
              height: 30,
              endIndent: 20,
              indent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Overcast clouds"),
                    Text("9 C"),
                    Text("min:8 C / mac: 11 C"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.surfing_rounded),
                    Text("widn 0.65 m/s")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
