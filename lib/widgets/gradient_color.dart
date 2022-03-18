import 'package:flutter/material.dart';

BoxDecoration gradient() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.blue,
        Colors.white,
      ],
    ),
  );
}
