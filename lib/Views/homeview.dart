import 'package:flutter/material.dart';
import 'package:weatherapp/Controller/home_controller.dart';
import 'package:weatherapp/Views/weatherData.dart';
import 'package:weatherapp/constants/Colors.dart';
import 'package:weatherapp/images/images.dart';

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
            elevation: 0,
            backgroundColor: Color(0xff6AB9FE),
           
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
                // height: MediaQuery.of(context).size.height * 1,
                // width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //     color: Colors.transparent,
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(10),
                //       bottomRight: Radius.circular(10),
                //     )),
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
