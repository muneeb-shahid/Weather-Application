import 'package:flutter/material.dart';
import 'package:weatherapp/constants/colors.dart';
import 'package:weatherapp/controller/home_controller.dart';
import '../function/data_weather_function.dart';
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
                color: AppColors.appWhiteColor,
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
                      AppImages.whiteThemeImage,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(100, 0, 0, 0)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                WeatherData.dataWeatherText(
                                    "${snapshot.data.main.temp}°", 23),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                WeatherData.dataWeatherText(
                                    "${snapshot.data.name}", 25),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                WeatherData.dataWeatherText(
                                    "RealFeel: ${snapshot.data.main.feelsLike}°",
                                    20),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                WeatherData.dataWeatherText(
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
                                      color: AppColors.appRedTheme,
                                    ),
                                    WeatherData.dataWeatherText(
                                        "${snapshot.data.main.tempMin}°", 14),
                                    Icon(Icons.thermostat,
                                        color: AppColors.appBlueTheme),
                                    WeatherData.dataWeatherText(
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(100, 0, 0, 0)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    WeatherData.dataWetherContainerText(
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
                                    WeatherData.dataWetherContainerText(
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
                                    WeatherData.dataWetherContainerText(
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
                                    WeatherData.dataWetherContainerText(
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
                                    WeatherData.dataWetherContainerText(
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(100, 0, 0, 0)),
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
                                            padding: const EdgeInsets.only(
                                                left: 0, top: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month_outlined,
                                                  color:
                                                      AppColors.appWhiteColor,
                                                ),
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
                                                      color: AppColors
                                                          .appWhiteColor,
                                                      wordSpacing: 2,
                                                      letterSpacing: 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                          WeatherData.dataWeatherDays(
                                              "TODAY",
                                              20,
                                              "55°",
                                              'assets/images/range.png',
                                              "85°",
                                              context),
                                          WeatherData.dataWeatherDays(
                                              "MON",
                                              20,
                                              "55°",
                                              'assets/images/range.png',
                                              "81°",
                                              context),
                                          WeatherData.dataWeatherDays(
                                              "TUES",
                                              20,
                                              "56°",
                                              'assets/images/range.png',
                                              "87°",
                                              context),
                                          WeatherData.dataWeatherDays(
                                              "FRI",
                                              20,
                                              "59°",
                                              'assets/images/range.png',
                                              "90°",
                                              context),
                                          WeatherData.dataWeatherDays(
                                              "THURS",
                                              20,
                                              "60°",
                                              'assets/images/range.png',
                                              "82°",
                                              context),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
