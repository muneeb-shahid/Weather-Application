import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Model/user_model.dart';

final City_Name = TextEditingController();
getusers() async {
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=${City_Name.text.toLowerCase().toString()}&appid=f5783e1fee68d6228723ecc46804ee40";
  var Baseurl = Uri.parse(url);
  var response = await http.get(Baseurl);
  print(response.body);
  var responsedata = jsonDecode(response.body);
  var userdata = User_Models.fromJson(responsedata);

  return userdata;
}

