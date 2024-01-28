import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/user_model.dart';

final cityName = TextEditingController();
getusers() async {
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=${cityName.text.toLowerCase().toString()}&appid=f5783e1fee68d6228723ecc46804ee40";
  var baseUrl = Uri.parse(url);
  var response = await http.get(baseUrl);
  if (kDebugMode) {
    print(response.body);
  }
  var responsedata = jsonDecode(response.body);
  var userdata = UserModels.fromJson(responsedata);

  return userdata;
}
