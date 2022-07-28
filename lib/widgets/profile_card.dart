import 'package:flutter/material.dart';

import '../constants.dart';

Widget profile({
  required String name,
  required String role,
  required String email,
  required BuildContext context,
  String? imageUrl,
}) {
  return Card(
    margin: const EdgeInsets.all(15),
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
        SizedBox(
          width: MediaQuery.of(context).size.width * 60 / 100,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Name: $name',
                style: kLabelTextStyle,
              ),
              Text(
                'Role: $role',
                style: kLabelTextStyle,
              ),
              Text(
                'Email: $email',
                style: kLabelTextStyle,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
