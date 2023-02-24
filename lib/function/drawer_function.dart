import 'package:flutter/material.dart';

import '../constants/Colors.dart';

class Drawer_Function {
  static drawer_list_function(iconn, String text) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            iconn,
            color: App_Colors.app_white_color,
            size: 30,
          ),
          title: Text(
            text,
            style: TextStyle(
             letterSpacing: 2,
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        Divider(
          thickness: 1,
          color: App_Colors.app_white_color,
        ),
      ],
    );
  }
}
