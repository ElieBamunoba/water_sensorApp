import 'package:flutter/material.dart';
import 'package:water_sensor/widgets/sensor_info.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants.dart';
import '../../models/pie_graph.dart';
import '../../widgets/navigation_card.dart';

class StatisticsPage extends StatelessWidget {
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
                width: MediaQuery.of(context).size.width,
                color: Palette.activeColor,
                title: 'Overview',
                icon: Icons.ac_unit_rounded,
                txtColor: Colors.white,
              ),
              NavigationCard(
                width: MediaQuery.of(context).size.width,
                color: Palette.cardbackgroundColor2,
                title: 'Corn',
                icon: Icons.ac_unit_rounded,
                txtColor: Palette.textColor1,
              ),
              NavigationCard(
                width: MediaQuery.of(context).size.width,
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
                width: MediaQuery.of(context).size.width,
                backgroundColor: Palette.greenColor,
                txtColor: Colors.white,
              ),
              SensorInfo(
                title: 'Battery',
                amount: '100%',
                width: MediaQuery.of(context).size.width,
                backgroundColor: Palette.textColor2,
                txtColor: Colors.white,
              ),
              SensorInfo(
                title: 'issues',
                amount: '0',
                width: MediaQuery.of(context).size.width,
                backgroundColor: Palette.card3,
                txtColor: Palette.textColor1,
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 41 / 100,
            decoration: BoxDecoration(
              color: Palette.cardbackgroundColor2,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: const Text(
                          'Field Water',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('19.4 %'),
                            Text('40 %'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('23.5 %'),
                            Text('17.1 %'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      height: 10,
                                      width: 10,
                                      child: null,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 140, 201, 181),
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    const Text('Optimal'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      height: 10,
                                      width: 10,
                                      child: null,
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    const Text('Serious Attention'),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      height: 10,
                                      width: 10,
                                      child: null,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 224, 186, 135),
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    const Text('N/A'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      height: 10,
                                      width: 10,
                                      child: null,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 111, 188, 211),
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    const Text('Saturated/Full'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: SfCircularChart(
                  series: <CircularSeries>[
                    // Render pie chart
                    PieSeries<ChartData, String>(
                        strokeWidth: 10,
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y)
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
