import 'package:flutter/material.dart';
import 'package:weatherapp/Controller/home_controller.dart';
import 'package:weatherapp/Views/drawer.dart';
import 'package:weatherapp/Views/weatherData.dart';
import 'package:weatherapp/images/images.dart';
import '../constants/Colors.dart';
import '../function/drawer_function.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.location_pin)),
          ],
          elevation: 0,
          backgroundColor: Color(0xff6AB9FE),
        ),
        drawer: Drawer(
          backgroundColor: App_Colors.app_blue_theme,
          child: ListView(
            padding: EdgeInsets.only(
              top: 10,
            ),
            children: [
              Container(
                color: Colors.blue,
                child: ListTile(
                  title: Text(
                    'SETTING',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Drawer_Function.drawer_list_function(Icons.home_outlined, "Home"),
              Drawer_Function.drawer_list_function(
                  Icons.location_pin, "Manage Location"),
              Drawer_Function.drawer_list_function(
                  Icons.device_thermostat_outlined, "Temperature"),
              Drawer_Function.drawer_list_function(
                  Icons.lock_rounded, "Lock Screen"),
              Drawer_Function.drawer_list_function(
                  Icons.notification_add_rounded, "Notification"),
              Drawer_Function.drawer_list_function(
                  Icons.radar_rounded, "Weather Radar"),
              Drawer_Function.drawer_list_function(Icons.sunny, "Unit Setting"),
              Drawer_Function.drawer_list_function(
                  Icons.widgets_rounded, "Weather Widgets"),
              Drawer_Function.drawer_list_function(
                  Icons.email_rounded, "Feedback and Suggestions"),
              Drawer_Function.drawer_list_function(
                  Icons.email_rounded, "Report Problems"),
              Drawer_Function.drawer_list_function(Icons.share, "Share"),
              ListTile(
                title: Text(
                  "VERSION 72.02",
                  style: TextStyle(
                      letterSpacing: 2,
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      App_Images.white_theme_image,
                    ),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: TextFormField(
                        controller: City_Name,
                        style: TextStyle(color: App_Colors.app_white_color),
                        cursorColor: Colors.white,
                        onFieldSubmitted: (value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataWeather()));
                          setState(() {
                            getusers();
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: App_Colors.app_white_color),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Search City",
                          hintStyle:
                              TextStyle(color: App_Colors.app_white_color),
                          suffixIcon: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DataWeather()));
                                setState(() {
                                  getusers();
                                });
                              },
                              icon: Icon(Icons.search,
                                  color: App_Colors.app_white_color)),
                          prefixIcon: Icon(Icons.location_pin,
                              color: App_Colors.app_white_color),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]))));
  }
}
