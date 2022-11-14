import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget ProfileCard({
  required String name,
  required String role,
  required String email,
  required String imageUrl,
  required Color color,
  required double width,
  required double height,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25),
    ),
    width: width * 90 / 100,
    height: height * 20 / 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipOval(
          child: Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Name: $name"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Role: $role"),
                  Text("Email: $email"),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
