import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
            child: weatherCard(),
            onTap: () => Navigator.pushNamed(context, route.weatherScreen),
          ),
          // ignore: avoid_unnecessary_containers

          Center(
            child: Container(
              margin: const EdgeInsets.all(40),
              child: CircularPercentIndicator(
                radius: 100,
                lineWidth: 15.0,
                percent: 0.79,
                center: Container(
                  width: 70,
                  height: 110,
                  // color: Colors.amber,
                  child: Image.asset(
                    "assets/images/water.png",
                    fit: BoxFit.fill,
                  ),
                ),
             curve: Curve.,
                backgroundWidth: 12,
                animation: true,
                animationDuration: 1500,
                progressColor: const Color(0xff1ca3ec),
              ),
            ),
          ),

          const Text("WATER LEVEL"),
          const Text("")
        ],
      ),
    );
  }
}
