import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../services/watering_api.dart';
import '../../models/Weather.dart';
import '../../widgets/weather_card.dart';
import '../../constants/colors.dart';
import '../../models/water.dart';
import '../../services/moisture_api.dart';
import '../../services/weather_api.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final WeatherApi _weatherApi = WeatherApi();
  late WeatherModel data;

  final MoistureApi _moistureApi = MoistureApi();
  late WaterModel moisture;
  late double _moistureLevel;

  Future<void> getData() async {
    data = await _weatherApi.fetchWeather();
  }

  Future<void> getMoisture() async {
    moisture = await _moistureApi.fetchMoisture();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 10 / 100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWidget(title: 'Dashboard'),
                IconButton(
                  onPressed: () {
                    context.read<MoistureApi>().intitialValues();
                    context.read<MoistureApi>().fetchMoisture();
                    setState(() {});
                  },
                  icon: const Icon(Icons.refresh_rounded),
                  style: IconButton.styleFrom(),
                )
              ],
            ),
          ),
          Center(
            child: FutureBuilder(
              future: getData(),
              builder: (context, weather) {
                if (weather.connectionState == ConnectionState.done) {
                  return weatherCard(
                    weather: data.weather,
                    cityName: data.cityName,
                    temperature: data.temperature,
                    wind: data.wind,
                    humidity: data.humidity,
                    icon: data.icon,
                    pressure: data.pressure,
                  );
                } else if (weather.hasError) {
                  return Text('${weather.error}');
                }
                return Stack(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      elevation: 2.5,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Palette.cardbackgroundColor,
                              Palette.cardbackgroundColor2,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: double.infinity,
                        height: 200,
                        child: null,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 90),
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        strokeWidth: 5,
                        color: Palette.greenColor,
                      ),
                    ),
                  ],
                );
                // By default, show a loading spinner.
              },
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Palette.cardbackgroundColor,
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.all(20),
            child: FutureBuilder(
              future: getMoisture(),
              builder: (context, moistures) {
                if (moistures.connectionState == ConnectionState.done) {
                  if (moisture.moisture < 0) {
                    _moistureLevel = 0;
                  } else if (moisture.moisture >= 100) {
                    _moistureLevel = 1;
                  } else {
                    _moistureLevel = (moisture.moisture / 100);
                  }
                  return CircularPercentIndicator(
                    radius: 100,
                    lineWidth: 15.0,
                    //value
                    percent: _moistureLevel,
                    center: SizedBox(
                      width: 70,
                      height: 110,
                      child: Center(
                        child: Text(
                          "${(_moistureLevel * 100).toStringAsFixed(1)} %",
                          style: const TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 19,
                            color: Palette.greenColor,
                          ),
                        ),
                      ),
                    ),
                    backgroundWidth: 15,
                    animation: true,
                    animationDuration: 1500,
                    progressColor: Palette.greenColor,
                    circularStrokeCap: CircularStrokeCap.round,
                  );
                } else if (moistures.hasError) {
                  return Text('${moistures.error}');
                }
                return Stack(
                  children: [
                    CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 15.0,
                      //value
                      percent: 0,
                      center: const SizedBox(
                        width: 70,
                        height: 110,
                        child: Center(
                          child: Text(
                            "0 %",
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 20,
                              color: Palette.greenColor,
                            ),
                          ),
                        ),
                      ),
                      backgroundWidth: 15,
                      animation: true,
                      animationDuration: 1500,
                      progressColor: Palette.greenColor,
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ],
                );
                // By default, show a loading spinner.
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Palette.activeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: const Size(150, 50)),
            child: const Text(
              'Water Now',
            ),
            onPressed: () {
              if ((_moistureLevel * 100) < 5) {
                waterNow(data: false);
                Fluttertoast.showToast(
                  msg: 'Kindly check the sensor',
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Palette.cardbackgroundColor,
                  textColor: Palette.textColor1,
                  fontSize: 15,
                );
              } else if ((_moistureLevel * 100) < 70) {
                waterNow(data: true);
              } else {
                waterNow(data: false);
                Fluttertoast.showToast(
                  msg: 'There is enough moisture in the soil',
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Palette.cardbackgroundColor,
                  textColor: Palette.textColor1,
                  fontSize: 15,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
