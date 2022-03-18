import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Weather.dart';

class WeatherApiClient {
  Future<Weather> getCurrentWeather() async {
    final queryParameters = {
      'lat': '-1.439466',
      'lon': '37.049710',
      'appid': 'c9fbc2e212b3edc3454df48bbdbd371b',
      'units': 'imperial'
    };
    //https://api.openweathermap.org/data/2.5/weather?lat=-1.439466&lon=37.049710&appid=c9fbc2e212b3edc3454df48bbdbd371b

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);
    final response = await http.get(uri);

    final json = jsonDecode(response.body);
    print(" city : ${Weather.fromJson(json).cityName}");
    print("temp : ${Weather.fromJson(json).temperature}");
    print("min : ${Weather.fromJson(json).min}");
    print("max : ${Weather.fromJson(json).max}");
    print("weather : ${Weather.fromJson(json).weather}");
    print("icon : ${Weather.fromJson(json).icon}");
    return Weather.fromJson(json);
  }
}
