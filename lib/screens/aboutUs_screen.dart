import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/profile_card.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text('Our Team',
              style: TextStyle(fontSize: 30, color: Colors.black)),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.all(10)),
              ProfileCard(
                  name: 'Elie Bamunoba',
                  role: 'Mobile developer',
                  email: 'eliebamunoba@gmail.com',
                  imageUrl:
                      'https://media.licdn.com/dms/image/C5603AQFp3UEt-A_vcg/profile-displayphoto-shrink_200_200/0/1647807033749?e=1687392000&v=beta&t=3JHHEmroDP7NwSx0gCn8l9ILn-4ITghCPoRD5IBsiqo',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Palette.cardbackgroundColor),
              ProfileCard(
                  name: 'Egesa Otema',
                  role: 'Back-End Developer',
                  email: 'wayneotema@gmail.com',
                  imageUrl:
                      'https://avatars.githubusercontent.com/u/74417129?v=4',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Palette.cardbackgroundColor),
              ProfileCard(
                  name: 'Eric Muuo',
                  role: 'IOT Developer',
                  email: 'hearteric57@gmail.com',
                  imageUrl:
                      'https://media.licdn.com/dms/image/D4D03AQGOxEryUHaJOg/profile-displayphoto-shrink_200_200/0/1677606874957?e=1687392000&v=beta&t=0voMeOQDyYPrUEkKablJBQUyQMSlTbOZe5QAE64kzDc',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Palette.cardbackgroundColor),
            ],
          ),
        ),
      ),
    );
  }
}
