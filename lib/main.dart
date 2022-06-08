import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_sensor/services/weather_api.dart';
import 'route/route.dart' as route;

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherApi(),
      builder: (context, child) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Sensor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.dashboardScreen,
    );
  }
}
