import 'package:flutter/material.dart';
import 'package:weatherapp/constants/Colors.dart';

class Weather_Data {
  static Data_Weather_text(String text,double fontsize) {
    return Text(
      text,
      style: TextStyle(color: App_Colors.app_white_color, fontSize: fontsize, fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',letterSpacing: 2),
    );
  }
}
