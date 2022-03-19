// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:water_sensor/models/Weather.dart';
import 'package:water_sensor/widgets/weather_card.dart';
import '../services/weather_api.dart';
import '../widgets/gradient_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<WeatherModel> _weatherModel;
  WeatherApi _weatherApi = WeatherApi();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _weatherModel = _weatherApi.fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            // child: GestureDetector(
            child: FutureBuilder<WeatherModel>(
                future: _weatherModel,
                builder: (context, weather) {
                  if (weather.hasData) {
                    return weatherCard(
                        weather: weather.data!.weather,
                        cityName: weather.data!.cityName,
                        temperature: weather.data!.temperature,
                        max: weather.data!.max,
                        min: weather.data!.min,
                        icon: weather.data!.icon);
                  } else if (weather.hasError) {
                    return Text('${weather.error}');
                  }
                  return Stack(
                    children: [
                      Card(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15,
                        ),
                        elevation: 5,
                        child: Container(
                          decoration: gradient(),
                          width: double.infinity,
                          height: 200,
                          child: null,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 100),
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(
                          strokeWidth: 5,
                        ),
                      ),
                    ],
                  );
                  // By default, show a loading spinner.
                }

                // ) ,
                // onTap: () => Navigator.pushNamed(context, route.weatherScreen),
                ),
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
              // ignore: sized_box_for_whitespace
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
        ],
      ),
    );
  }
}
