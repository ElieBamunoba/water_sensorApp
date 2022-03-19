import 'package:flutter/material.dart';
import '../../screens/dashboard_screen.dart';
import '../../screens/weather_screen.dart';

//Routes Names
const String dashboardScreen = 'dashboard';
const String weatherScreen = 'weather';

//control pur page route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case dashboardScreen:
      return MaterialPageRoute(builder: (context) => const DashboardScreen());
    case weatherScreen:
      return MaterialPageRoute(builder: (context) => const WeatherScreen());
    default:
      throw ('This rout name does not exist');
  }
}
