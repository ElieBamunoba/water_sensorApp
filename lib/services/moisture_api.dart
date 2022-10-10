import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import '../models/water.dart';

class MoistureApi with ChangeNotifier {
  bool _error = false;
  String _errorMessage = '';
  Map<String, dynamic> _moistureMap = {};

  //getters
  bool get error => _error;
  String get errorMessage => _errorMessage;
  Map<String, dynamic> get map => _moistureMap;
  // Function get fetchWeather => _fetchWeather;

  Future<WaterModel> fetchMoisture() async {
    //https://ewo-iot-server.herokuapp.com/getcurrent/
    final uri = Uri.https('ewo-iot-server.herokuapp.com', '/getcurrent');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      try {
        _moistureMap = jsonDecode(response.body);
        _error = false;
      } catch (e) {
        _error = true;
        _errorMessage = e.toString();
        _moistureMap = {};
      }
    } else {
      _error = true;
      _error = true;
      _errorMessage = "Error: it could be your internet connection";
      _moistureMap = {};
    }
    notifyListeners();
    return WaterModel.fromJson(_moistureMap);
  }

  void intitialValues() {
    _moistureMap = {};
    _error = false;
    _errorMessage = '';
    notifyListeners();
  }
}
