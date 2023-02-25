import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:weatherapp/Controller/home_controller.dart';
import 'package:weatherapp/constants/Colors.dart';

import '../function/dataWeather_Function.dart';
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
                height: MediaQuery.of(context).size.height * 0.05,
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
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(100, 0, 0, 0)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                Weather_Data.Data_Weather_text(
                                    "${snapshot.data.main.temp}°", 23),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Weather_Data.Data_Weather_text(
                                    "${snapshot.data.name}", 25),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Weather_Data.Data_Weather_text(
                                    "RealFeel: ${snapshot.data.main.feelsLike}°",
                                    20),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Weather_Data.Data_Weather_text(
                                    snapshot.data.weather[0].description, 20),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.thermostat,
                                      color: App_Colors.app_red_theme,
                                    ),
                                    Weather_Data.Data_Weather_text(
                                        "${snapshot.data.main.tempMin}°", 14),
                                    Icon(
                                      Icons.thermostat,
                                      color: App_Colors.app_blue_theme,
                                    ),
                                    Weather_Data.Data_Weather_text(
                                        "${snapshot.data.main.tempMax}°", 14),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(100, 0, 0, 0)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Weather_Data.data_Wether_container_text(
                                      context,
                                      "Now",
                                      Icons.sunny,
                                      "31°",
                                    )
                                  ],
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Weather_Data.data_Wether_container_text(
                                      context,
                                      "10 AM",
                                      Icons.nights_stay_sharp,
                                      "24°",
                                    )
                                  ],
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Weather_Data.data_Wether_container_text(
                                      context,
                                      "11 AM",
                                      Icons.nights_stay_sharp,
                                      "28°",
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Weather_Data.data_Wether_container_text(
                                      context,
                                      "12 AM",
                                      Icons.cloud,
                                      "18°",
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Weather_Data.data_Wether_container_text(
                                      context,
                                      "1 PM",
                                      Icons.cloudy_snowing,
                                      "15°",
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            // width: MediaQuery.of(context).size.width * 0.9,
                            //  height: MediaQuery.of(context).size.height * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(100, 0, 0, 0)),
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: App_Colors
                                                        .app_white_color),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02,
                                                ),
                                                Text(
                                                  "10-DAY FORECAST",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Poppins",
                                                      color: App_Colors
                                                          .app_white_color,
                                                      wordSpacing: 2,
                                                      letterSpacing: 2),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  thickness: 1,
                                                  color: App_Colors
                                                      .app_white_color,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            "24/2",
                                            style: TextStyle(
                                                color:
                                                    App_Colors.app_white_color,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Fri",
                                            style: TextStyle(
                                                color:
                                                    App_Colors.app_white_color,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                        height: 35,
                                      ),
                                      Image(
                                          height: 40,
                                          width: 40,
                                          image: NetworkImage(
                                            "https://assets5.lottiefiles.com/packages/lf20_yKGuIT.json",
                                          )),
                                      Text(
                                        "22°",
                                        style: TextStyle(
                                            color: App_Colors.app_white_color,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 30,
                                        height: 35,
                                      ),
                                      Text(
                                        "30°",
                                        style: TextStyle(
                                            color: App_Colors.app_white_color,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 35, 35, 35),
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "25/2",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Sat",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 35,
                                    ),
                                    Image(
                                        height: 40,
                                        width: 40,
                                        image: NetworkImage(
                                          " https://assets5.lottiefiles.com/packages/lf20_yKGuIT.json",
                                        )),
                                    Text(
                                      "21°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "31°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 35, 35, 35),
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "26/2",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Sun",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 35,
                                    ),
                                    Image(
                                        height: 40,
                                        width: 40,
                                        image: NetworkImage(
                                          "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",
                                        )),
                                    Text(
                                      "15°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "25°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 35, 35, 35),
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "27/2",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Mon",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 35,
                                    ),
                                    Image(
                                        height: 40,
                                        width: 40,
                                        image: NetworkImage(
                                          "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",
                                        )),
                                    Text(
                                      "16°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "25°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 35, 35, 35),
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "28/2",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Tue",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 35,
                                    ),
                                    Image(
                                        height: 40,
                                        width: 40,
                                        image: NetworkImage(
                                          "https://assets8.lottiefiles.com/temp/lf20_VAmWRg.json",
                                        )),
                                    Text(
                                      "14°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "20°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 35, 35, 35),
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "1/3",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Wed",
                                          style: TextStyle(
                                              color: App_Colors.app_white_color,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 35,
                                    ),
                                    Image(
                                        height: 40,
                                        width: 40,
                                        image: NetworkImage(
                                          "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",
                                        )),
                                    // Lottie.network(
                                    //     "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",
                                    //     height: 40,
                                    //     width: 40,
                                    //     repeat: true),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "14°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "26°",
                                      style: TextStyle(
                                          color: App_Colors.app_white_color,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
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
