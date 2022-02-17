import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:water_sensor/widgets/waveClipper.dart';

class CurrentWaterLevelTab extends StatefulWidget {
  CurrentWaterLevelTab({Key? key}) : super(key: key);

  @override
  State<CurrentWaterLevelTab> createState() => _CurrentWaterLevelTabState();
}

class _CurrentWaterLevelTabState extends State<CurrentWaterLevelTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.45,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: const Color(0xff1ca3ec),
                    height: 200,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: const Color(0xff1ca3ec),
                  height: 180,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            child: CircularPercentIndicator(
              radius: 90,
              lineWidth: 10.0,
              percent: 0.79,
              center: const Text(
                "80%",
                style: TextStyle(fontSize: 20),
              ),
              animation: true,
              animationDuration: 1500,
              progressColor: Color(0xff1ca3ec),
            ),
          ),
        )
      ],
    );
  }
}
