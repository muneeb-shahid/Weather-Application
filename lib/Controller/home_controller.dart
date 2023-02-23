import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/user_model.dart';

getusers() async {
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=f5783e1fee68d6228723ecc46804ee40";
  var Baseurl = Uri.parse(url);
  var response = await http.get(Baseurl);
  print(response.body);
  var responsedata = jsonDecode(response.body);
  var userdata = User_Models.fromJson(responsedata);

  return userdata;
}

// getuserid(name) async {
//   var baseUrl =
//       "https://api.openweathermap.org/data/2.5/weather?q=$name&appid=f5783e1fee68d6228723ecc46804ee40";
//   var url = Uri.parse(baseUrl);
//   var res = await http.get(url);
//   var jsonRes = jsonDecode(res.body);

//   return UserModel.fromJson(jsonRes);
// }


getusersByName(name) async {
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=$name&appid=f5783e1fee68d6228723ecc46804ee40";
  var Baseurl = Uri.parse(url);
  var response = await http.get(Baseurl);
  print(response.body);
  var responsedata = jsonDecode(response.body);
  var userdata = User_Models.fromJson(responsedata);

  return userdata;
}