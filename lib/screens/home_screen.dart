import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:water_sensor/models/Weather.dart';
import 'package:water_sensor/services/weather_api_client.dart';
import 'package:water_sensor/widgets/weather_card.dart';
import '../route/route.dart' as route;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            child: weatherCard(
              weather: "_weatherModel.weather",
              cityName: "_weatherModel.cityName",
              temperature: 10,
              max: 10,
              min: 10,
            ),
            onTap: () => Navigator.pushNamed(context, route.weatherScreen),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFA8DBF7),
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.all(40),
            child: CircularPercentIndicator(
              radius: 100,
              lineWidth: 15.0,
              //value
              percent: 0.45,
              center: Container(
                width: 70,
                height: 110,
                // color: Colors.amber,
                child: Center(
                  child: Image.asset(
                    "assets/images/water.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              backgroundWidth: 15,
              animation: true,
              animationDuration: 1500,
              progressColor: const Color(0xff1ca3ec),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
          const Text("WATER LEVEL"),
          const Text("")
        ],
      ),
    );
  }
}
