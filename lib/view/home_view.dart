import 'package:flutter/material.dart';
import 'package:weatherapp/images/images.dart';
import 'package:weatherapp/view/weather_data.dart';
import 'package:weatherapp/view_model/home_view_model.dart';
import '../constants/colors.dart';
import '../function/drawer_function.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.location_pin)),
        ],
        elevation: 0,
        backgroundColor: const Color(0xff6AB9FE),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.appBlueTheme,
        child: ListView(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          children: [
            Container(
              color: Colors.blue,
              child: const ListTile(
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
            DrawerFunction.drawerListFunction(Icons.home_outlined, "Home"),
            DrawerFunction.drawerListFunction(
                Icons.location_pin, "Manage Location"),
            DrawerFunction.drawerListFunction(
                Icons.device_thermostat_outlined, "Temperature"),
            DrawerFunction.drawerListFunction(
                Icons.lock_rounded, "Lock Screen"),
            DrawerFunction.drawerListFunction(
                Icons.notification_add_rounded, "Notification"),
            DrawerFunction.drawerListFunction(
                Icons.radar_rounded, "Weather Radar"),
            DrawerFunction.drawerListFunction(Icons.sunny, "Unit Setting"),
            DrawerFunction.drawerListFunction(
                Icons.widgets_rounded, "Weather Widgets"),
            DrawerFunction.drawerListFunction(
                Icons.email_rounded, "Feedback and Suggestions"),
            DrawerFunction.drawerListFunction(
                Icons.email_rounded, "Report Problems"),
            DrawerFunction.drawerListFunction(Icons.share, "Share"),
            const ListTile(
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
                  AppImages.whiteThemeImage,
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: TextFormField(
                      controller: cityName,
                      style: TextStyle(color: AppColors.appWhiteColor),
                      cursorColor: Colors.white,
                      onFieldSubmitted: (value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DataWeather()));
                        setState(() {
                          getusers();
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: AppColors.appWhiteColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Search City",
                        hintStyle: TextStyle(color: AppColors.appWhiteColor),
                        suffixIcon: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           DataWeather()));
                              setState(() {
                                getusers();
                              });
                            },
                            icon: Icon(Icons.search,
                                color: AppColors.appWhiteColor)),
                        prefixIcon: Icon(Icons.location_pin,
                            color: AppColors.appWhiteColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
