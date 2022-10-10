import 'package:flutter/material.dart';

class Palette {
  static const Color iconColor = Color(0xFFB6C7D1);

  static const Color textColor1 = Color(0XFF92663B);
  static const Color textColor2 = Color(0XFF9BB3C0);

  static const Color backgroundColor = Color(0xFFECF3F9);

  static const Color greenColor = Color(0xFF1b9c73);
  static const Color activeColor = Color(0xFFe59a54);
  static const Color cardbackgroundColor = Color(0xFFEceee6);
  static const Color cardbackgroundColor2 = Color(0xFFE6E4E0);
}

// ignore: non_constant_identifier_names
Widget TitleWidget({required String title}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 25,
        color: Palette.textColor1,
      ),
    ),
  );
}
