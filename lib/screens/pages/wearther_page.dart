import 'package:flutter/material.dart';

import '../../constants.dart';

class WeatherDeatailPage extends StatelessWidget {
  const WeatherDeatailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 15 / 100,
            child: Row(
              children: [TitleWidget(title: 'Weather')],
            ),
          ),
          Center(child: Text('Weather')),
        ],
      ),
    );
  }
}
