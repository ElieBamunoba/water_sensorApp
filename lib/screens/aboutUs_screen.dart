import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/profile_card.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text('Team:', style: TextStyle(fontSize: 30)),
              ),
              ProfileCard(
                name: 'Elie Bamunoba',
                role: 'Mobile developer',
                email: 'eliebamunoba@gmail.com',
                imageUrl:
                    'https://media-exp1.licdn.com/dms/image/C5603AQFp3UEt-A_vcg/profile-displayphoto-shrink_800_800/0/1647807033749?e=1674086400&v=beta&t=Y1ogvqlKlwqx67Eb7r9XBgpYS29psWJiiWGErTlI1VY',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Palette.cardbackgroundColor,
              ),
              ProfileCard(
                name: 'Egesa Otema',
                role: 'Back-End Developer',
                email: 'wayneotema@gmail.com',
                imageUrl:
                    'https://avatars.githubusercontent.com/u/74417129?v=4',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Palette.cardbackgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
