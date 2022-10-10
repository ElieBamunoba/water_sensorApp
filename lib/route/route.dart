import 'package:flutter/material.dart';
import '../../screens/dashboard_screen.dart';

//Routes Names
const String dashboardScreen = 'dashboard';
const String weatherScreen = 'weather';
const String teamInfoScreen = 'teamInfo';

//control pur page route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case dashboardScreen:
      return MaterialPageRoute(builder: (context) => const DashboardScreen());
    default:
      throw ('This rout name does not exist');
  }
}
