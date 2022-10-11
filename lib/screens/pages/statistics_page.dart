import 'package:flutter/material.dart';
import 'package:water_sensor/widgets/sensor_info.dart';

import '../../constants.dart';
import '../../widgets/navigation_card.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 10 / 100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWidget(title: 'Statistics'),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notification_important_outlined),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationCard(
                color: Palette.activeColor,
                title: 'Overview',
                icon: Icons.ac_unit_rounded,
                txtColor: Colors.white,
              ),
              NavigationCard(
                color: Palette.cardbackgroundColor2,
                title: 'Corn',
                icon: Icons.ac_unit_rounded,
                txtColor: Palette.textColor1,
              ),
              NavigationCard(
                color: Palette.cardbackgroundColor2,
                title: 'Wheat',
                icon: Icons.ac_unit_rounded,
                txtColor: Palette.textColor1,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: const Text('Sensors',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SensorInfo(
                title: 'Online',
                amount: '1',
                backgroundColor: Palette.greenColor,
                txtColor: Colors.white,
              ),
              SensorInfo(
                title: 'Battery',
                amount: '100%',
                backgroundColor: Palette.textColor2,
                txtColor: Colors.white,
              ),
              SensorInfo(
                title: 'issues',
                amount: '0',
                backgroundColor: Palette.card3,
                txtColor: Palette.textColor1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
