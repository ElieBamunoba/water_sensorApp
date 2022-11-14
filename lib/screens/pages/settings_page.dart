import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';
import '../../route/route.dart' as route;

import '../../constants/colors.dart';
import '../../constants/theme_changer.dart';

class WeatherDeatailPage extends StatefulWidget {
  const WeatherDeatailPage({Key? key}) : super(key: key);

  @override
  State<WeatherDeatailPage> createState() => _WeatherDeatailPageState();
}

class _WeatherDeatailPageState extends State<WeatherDeatailPage> {
  Widget divider() {
    return const Divider(
      color: Colors.black,
      height: 2,
    );
  }

  bool autoValue = false;
  void changeValue() {
    autoValue = !autoValue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 70 / 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: const Text("Dark Mode"),
              trailing: GFToggle(
                onChanged: (_) => ThemeBuilder.of(context)!.changeTheme(),
                value: false,
              ),
            ),
            divider(),
            ListTile(
              title: const Text("Auto"),
              subtitle: const Text("Automate the irrigation"),
              trailing: GFToggle(
                onChanged: (_) {
                  changeValue();
                  if (autoValue == true) {
                    Fluttertoast.showToast(
                      msg: 'Automatic irrigation enable',
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Palette.cardbackgroundColor,
                      textColor: Palette.textColor1,
                      fontSize: 15,
                    );
                  } else {
                    Fluttertoast.showToast(
                      msg: 'Automatic irrigation desable',
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Palette.cardbackgroundColor,
                      textColor: Palette.textColor1,
                      fontSize: 15,
                    );
                  }
                },
                value: autoValue,
              ),
            ),
            divider(),
            const ListTile(
              title: Text("Terms and conditions"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
            const ListTile(
              title: Text("Helps"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
            InkWell(
              onTap: () => Navigator.pushNamed(context, route.aboutUsScreen),
              child: const ListTile(
                title: Text("About Us"),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            divider(),
          ],
        ),
      ),
    );
  }
}
