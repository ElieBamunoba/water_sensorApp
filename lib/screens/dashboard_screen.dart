// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'settings_screen.dart';
import 'statistics_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 1;
  // ignore: deprecated_member_use
  final List<Widget> _pages = [];
  @override
  void initState() {
    _pages.add(StatisticsScreen());
    _pages.add(HomeScreen());
    _pages.add(SettingScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
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
                setState(() {
                  _currentIndex = index;
                });
              },
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.assessment_outlined),
                    label: 'Stastistics'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined), label: 'Setting')
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
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
    );
  }
}
