import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/water.dart';
import '../services/watering_api.dart';

class DataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(Water body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await watering(body))!;
    if (response.statusCode == 204) {
      isBack = true;
    }
    loading = false;
    notifyListeners();
  }
}
