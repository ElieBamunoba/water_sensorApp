import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/theme_changer.dart';
import 'route/route.dart' as route;

import 'services/moisture_api.dart';
import 'services/weather_api.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MoistureApi(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeatherApi(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        defaultBrightness: Brightness.light,
        builder: (context, _brightness) {
          return MaterialApp(
            title: 'Water Sensor',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Rubik',
              brightness: _brightness,
            ),
            onGenerateRoute: route.controller,
            initialRoute: route.dashboardScreen,
          );
        });
  }
}
