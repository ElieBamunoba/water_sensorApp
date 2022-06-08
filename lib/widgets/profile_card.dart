import 'package:flutter/material.dart';

Widget profile({
  required String name,
  required String role,
  required String email,
  required BuildContext context,
  String? imageUrl,
}) {
  return Card(
    margin: const EdgeInsets.all(15),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 30 / 100,
            height: 100,
            child: imageUrl == null
                ? Image.asset(
                    "assets/images/water.png",
                  )
                : Image.network(imageUrl),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 60 / 100,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Name: $name'),
                Text('Role: $role'),
                Text('Email: $email'),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
