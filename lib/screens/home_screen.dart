import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Water Sensor"),
        // ignore: prefer_const_literals_to_create_immutables
        elevation: 0.0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          GestureDetector(
            child: const Icon(Icons.list_outlined),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
