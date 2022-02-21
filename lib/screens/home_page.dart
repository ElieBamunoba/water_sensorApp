import 'package:flutter/material.dart';
import 'package:water_sensor/screens/about_us_screen.dart';
import 'package:water_sensor/screens/tab_pages/current_water_level_tab.dart';

class HomePage extends StatelessWidget {
  void openAboutUspage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutUsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Water Sensor"),
          backgroundColor: const Color(0xff1ca3ec),
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              onSelected: null,
              itemBuilder: (_) => [
                const PopupMenuItem(
                  child: Text("About Us"),
                  onTap: null,
                ),
              ],
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.water)),
              Tab(icon: Icon(Icons.av_timer)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CurrentWaterLevelTab(),
            CurrentWaterLevelTab(),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}

//Costom CLipper class with Path
