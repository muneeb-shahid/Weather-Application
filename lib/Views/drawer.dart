import 'package:flutter/material.dart';

import '../constants/Colors.dart';

class Drawer_ {
 static drawer_Function() {
    return  Drawer(
    backgroundColor:
    App_Colors.app_black_theme,
    child:
    ListView(
      padding: EdgeInsets.only(top: 200, left: 20, right: 20),
      children: [
        ListTile(
          leading:
              Image(image: AssetImage('assets/images/drawer shop icon.png')),
          title: Center(
              child: const Text(
            'Shop',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          )),
        ),
        ListTile(
          leading:
              Image(image: AssetImage('assets/images/DRAWER PLANT CARE.png')),
          title: Center(
              child: const Text(
            'Plant Care',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          )),
        ),
        ListTile(
          leading:
              Image(image: AssetImage('assets/images/drawer community.png')),
          title: Center(
              child: const Text(
            'Community',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          )),
        ),
        ListTile(
          leading: Image(image: AssetImage('assets/images/drawer account.png')),
          title: Center(
              child: const Text(
            'My Account',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          )),
        ),
        ListTile(
          leading: Image(image: AssetImage('assets/images/drawer truck.png')),
          title: Center(
              child: const Text(
            'Track Order',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          )),
        ),
        ListTile(
          title: Center(
              child: const Text(
            'Get the dirt',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          )),
        ),
        Center(
          child: Text(
            'FAQ',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        Center(
          child: Text(
            'About US',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        Center(
          child: Text(
            'Contact Us',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
  }
}
