import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_sensor/services/weather_api.dart';
import 'package:water_sensor/widgets/profile_card.dart';

class TeamInfoScreen extends StatelessWidget {
  const TeamInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team Info"),
      ),
      body: Column(
        children: [
          profile(
            name: "Elie Bamunoba",
            role: "Developer",
            email: "eliebamunoba@gmail.com",
            imageUrl:
                'https://media-exp1.licdn.com/dms/image/C5603AQFp3UEt-A_vcg/profile-displayphoto-shrink_800_800/0/1647807033749?e=1653523200&v=beta&t=oMc3xZC9kkiz_z3uIVsvGItVEoBqnMkKJxQzEbbl3hs',
            context: context,
          ),
          profile(
            name: "Egesa Otema",
            role: "Developer",
            email: "egesa@gmail.com",
            context: context,
          ),
        ],
      ),
    );
  }
}
