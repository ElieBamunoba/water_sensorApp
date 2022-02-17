import 'package:flutter/material.dart';

import '../widgets/waveClipper.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Water Sensor"),
          backgroundColor: Colors.redAccent,
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
          ]),
      body: Column(
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Colors.deepOrangeAccent,
                    height: 200,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.red,
                  height: 180,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Costom CLipper class with Path
