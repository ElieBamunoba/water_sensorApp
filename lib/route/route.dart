import 'package:flutter/material.dart';
import '../../screens/dashboard_screen.dart';
import '../screens/aboutUs_screen.dart';

//Routes Names
const String dashboardScreen = 'dashboard';
const String weatherScreen = 'weather';
const String teamInfoScreen = 'teamInfo';
const String aboutUsScreen = 'aboutUs';

//control pur page route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case dashboardScreen:
      return MaterialPageRoute(builder: (context) => const DashboardScreen());
    case aboutUsScreen:
      return MaterialPageRoute(builder: (context) => const AboutUsScreen());
    default:
      throw ('This rout name does not exist');
  }
}
