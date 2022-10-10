// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants.dart';
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
  final List<Widget> _pages = [
    StatisticsPage(),
    DashboardPage(),
    WeatherDeatailPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: _pages[_currentIndex],
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
                backgroundColor: Palette.activeColor,
                selectedItemColor: Colors.white,
                unselectedItemColor: Palette.textColor1,

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
                    icon: Icon(
                      Icons.home,
                    ),
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
            backgroundColor:
                _currentIndex == 1 ? Palette.greenColor : Palette.textColor2,
            child: Icon(Icons.home),
            onPressed: () => setState(() => _currentIndex = 1),
          ),
        ),
      ),
    );
  }
}
