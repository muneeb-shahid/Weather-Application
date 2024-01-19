import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DrawerFunction {
  static drawerListFunction(iconn, String text) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            iconn,
            color: AppColors.appWhiteColor,
            size: 30,
          ),
          title: Text(
            text,
            style: const TextStyle(
                letterSpacing: 2,
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.appWhiteColor,
        ),
      ],
    );
  }
}
