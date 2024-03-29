import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import '../models/Weather.dart';

class WeatherApi with ChangeNotifier {
  bool _error = false;
  String _errorMessage = '';
  Map<String, dynamic> _weatherMap = {};

  //getters
  bool get error => _error;
  String get errorMessage => _errorMessage;
  Map<String, dynamic> get map => _weatherMap;
  // Function get fetchWeather => _fetchWeather;

  Future<WeatherModel> fetchWeather() async {
    //https://api.openweathermap.org/data/2.5/weather?lat=-1.439466&lon=37.049710&appid=c9fbc2e212b3edc3454df48bbdbd371b

    final _queryParameters = {
      'lat': '-1.4402995',
      'lon': '37.049710',
      'appid': 'aee0ff2c3c13bf89a09b471b05a1ffaa',
      'units': 'metric'
    };
    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', _queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      try {
        _weatherMap = jsonDecode(response.body);
        _error = false;
      } catch (e) {
        _error = true;
        _errorMessage = e.toString();
        _weatherMap = {};
      }
    } else {
      _error = true;
      _error = true;
      _errorMessage = "Error: it could be your internet connection";
      _weatherMap = {};
    }
    notifyListeners();

    return WeatherModel.fromJson(_weatherMap);
  }

  void intitialValues() {
    _weatherMap = {};
    _error = false;
    _errorMessage = '';
    notifyListeners();
  }
}
