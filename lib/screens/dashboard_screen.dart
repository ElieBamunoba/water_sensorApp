// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_sensor/services/weather_api.dart';

import 'pages/home_page.dart';
import 'pages/wearther_page.dart';
import 'pages/statistics_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 1;
  final List<Map<String, Widget>> _pages = [
    {
      'page': StatisticsPage(),
      'title': Text('Statistics'),
    },
    {
      'page': DashboardPage(),
      'title': Text('Dashboard'),
    },
    {
      'page': WeatherDeatailPage(),
      'title': Text('Weather'),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                context.read<WeatherApi>().fetchWeather.call();
              });
            },
            icon: Icon(Icons.refresh),
          )
        ],
        title: _pages[_currentIndex]['title'],
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: Colors.blue,
              selectedItemColor: Colors.white,
              onTap: (index) {
                setState(
                  () => _currentIndex = index,
                );
              },
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.assessment_outlined,
                  ),
                  label: 'Stastistics',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.cloud),
                  label: 'Weather',
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(2.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Colors.blue : Colors.blueGrey,
          child: Icon(Icons.home),
          onPressed: () => setState(() => _currentIndex = 1),
        ),
      ),
    );
  }
}
