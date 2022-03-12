import 'package:flutter/material.dart';
import 'package:water_sensor/widgets/weather_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          weatherCard(),
          const Text("More Details"),
        ],
      ),
    );
  }
}
