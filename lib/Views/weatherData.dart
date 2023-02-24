import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Controller/home_controller.dart';
import '../constants/Colors.dart';
import '../images/images.dart';

class DataWeather extends StatefulWidget {
  const DataWeather({super.key});

  @override
  State<DataWeather> createState() => _DataWeatherState();
}

class _DataWeatherState extends State<DataWeather> {
  var isfavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: App_Colors.app_white_color,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  if (isfavourite == false) {
                    setState(() {
                      isfavourite = true;
                    });
                  } else {
                    setState(() {
                      isfavourite = false;
                    });
                  }
                },
                icon: Icon(
                  Icons.favorite,
                  color: isfavourite ? Colors.red : Colors.white,
                ))
          ],
        ),
        extendBodyBehindAppBar: true,
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
              SizedBox(
                height: 50,
              ),
              FutureBuilder(
                future: getusers(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "RealFeel: ${snapshot.data.main.feelsLike}°",
                          style: TextStyle(
                              color: App_Colors.app_white_color, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${snapshot.data.name}",
                          style: TextStyle(
                              color: App_Colors.app_white_color, fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${snapshot.data.main.temp}°",
                          style: TextStyle(
                              color: App_Colors.app_white_color, fontSize: 50),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          snapshot.data.weather[0].description,
                          style: TextStyle(
                              color: App_Colors.app_white_color, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )
            ]))));
  }
}
