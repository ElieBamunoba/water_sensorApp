import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:water_sensor/widgets/card_dashboard.dart';
import 'package:water_sensor/widgets/waveClipper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_unnecessary_containers
        Row(
          children: [
            CardDashboard(
                title: "Today",
                widget: const Icon(Icons.ac_unit_outlined),
                text2: "Daily Average"),
            CardDashboard(
                title: "Today",
                widget: const Icon(Icons.ac_unit_outlined),
                text2: "Daily Average"),
          ],
        ),
        Container(
          margin: EdgeInsets.all(20),
          padding: const EdgeInsets.all(8.0),
          child: const Text("Current Value"),
        ),
        Center(
          child: Container(
            child: CircularPercentIndicator(
              radius: 90,
              lineWidth: 12.0,
              percent: 0.79,
              center: const Text(
                "80%",
                style: TextStyle(fontSize: 20),
              ),
              animation: true,
              animationDuration: 1500,
              progressColor: const Color(0xff1ca3ec),
            ),
          ),
        ),
        const SizedBox(
          height: 65,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "water",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minimumSize: const Size(150, 50),
            maximumSize: const Size(200, 50),
            elevation: 10,
          ),
        )
      ],
    );
  }
}
