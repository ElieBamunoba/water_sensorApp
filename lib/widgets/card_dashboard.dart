import 'package:flutter/material.dart';

class CardDashboard extends StatelessWidget {
  final String title;
  final Widget widget;
  final String text2;

  CardDashboard({
    required this.title,
    required this.widget,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    double mediaHeight = MediaQuery.of(context).size.height;

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: mediaWidth * 2 / 100,
        vertical: mediaHeight * 2 / 100,
      ),
      elevation: 5,
      child: Container(
        width: mediaWidth * 45 / 100,
        height: mediaHeight * 25 / 100,
        child: Column(
          children: [
            Text(title),
            widget,
            Text(text2),
          ],
        ),
      ),
    );
  }
}
