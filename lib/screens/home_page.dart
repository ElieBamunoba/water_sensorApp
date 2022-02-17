import 'package:flutter/material.dart';
import 'package:water_sensor/screens/tab_pages/current_water_level_tab.dart';

import '../widgets/waveClipper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  onTap: null, //function to opern about us page,
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
        body: TabBarView(
          children: [
            CurrentWaterLevelTab(),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}

//Costom CLipper class with Path
