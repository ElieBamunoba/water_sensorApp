import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentValue = 0.53;

  void updateValue({required double newValue}) {
    setState(() {
      currentValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Water Sensor",
        ),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        elevation: 0.0,
        // ignore: prefer_const_literals_to_create_immutables
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
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 50 / 100,
          child: Column(
            children: [
              CircularPercentIndicator(
                radius: 90,
                center: Text("${currentValue * 100} %"),
                animateFromLastPercent: true,
                animationDuration: 5,
                backgroundWidth: 15,
                percent: currentValue,
                backgroundColor: Colors.grey,
                progressColor: currentValue > 0.5 ? Colors.blue : Colors.orange,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Amount of water"),
              // ElevatedButton(
              //     onPressed: () => updateValue(newValue: 0.51),
              //     child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
