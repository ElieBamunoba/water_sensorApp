import 'package:flutter/material.dart';

import '../constants.dart';

Widget NavigationCard({
  required String title,
  required IconData icon,
  required Color color,
  required Color txtColor,
}) {
  return InkWell(
    onTap: () {},
    highlightColor: Palette.activeColor,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      width: 120,
      height: 50,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                color: txtColor,
              ),
            ),
            title == 'Overview' ? const Text('') : Icon(icon),
          ],
        ),
      ),
    ),
  );
}
