import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/water.dart';

Future<http.Response?> watering(Water data) async {
  http.Response? response;
  try {
    response =
        await http.post(Uri.parse("http://127.0.0.1:8000/api/v1/auth/register"),
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            },
            body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}
