import 'package:flutter/material.dart';

class Palette {
  static const Color textColor1 = Color(0XFF92663B);
  static const Color textColor2 = Color(0XFF9BB3C0);

  static const Color backgroundColor = Color(0xFFECF3F9);

  static const Color greenColor = Color(0xFF1b9c73);
  static const Color greenColor2 = Color(0xFF199970);
  static const Color activeColor = Color(0xFFe59a54);
  static const Color redshade = Color.fromARGB(0, 223, 111, 111);
  static const Color blueshade = Color(0xff3387A1);
  static const Color greenshade = Color(0xFF199970);
  static const Color card3 = Color(0xFFE0ECF0);
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
        // fontFamily: 'asset/font/Pangram-ExtraBold.otf',
        color: Palette.textColor1,
        fontSize: 28,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik',
        fontStyle: FontStyle.normal,
      ),
    ),
  );
}
