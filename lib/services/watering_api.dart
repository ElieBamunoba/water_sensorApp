import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> waterNow({bool data = true}) {
  return http.post(
    Uri.parse('https://ewo-iot-server.herokuapp.com/water_now/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, bool>{
      'water_now': data,
    }),
  );
}
