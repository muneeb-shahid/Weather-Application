// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:weatherapp/function/dataWeather_Function.dart';

// import '../Controller/home_controller.dart';
// import '../constants/Colors.dart';
// import '../images/images.dart';

// class DataWeather extends StatefulWidget {
//   const DataWeather({super.key});

//   @override
//   State<DataWeather> createState() => _DataWeatherState();
// }

// class _DataWeatherState extends State<DataWeather> {
//   var isfavourite = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.arrow_back_ios_new_rounded,
//                 color: App_Colors.app_white_color,
//               )),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   if (isfavourite == false) {
//                     setState(() {
//                       isfavourite = true;
//                     });
//                   } else {
//                     setState(() {
//                       isfavourite = false;
//                     });
//                   }
//                 },
//                 icon: Icon(
//                   Icons.favorite,
//                   color: isfavourite ? Colors.red : Colors.white,
//                 ))
//           ],
//         ),
//         extendBodyBehindAppBar: true,
//         body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                       App_Images.white_theme_image,
//                     ),
//                     fit: BoxFit.cover)),
//             child: SingleChildScrollView(
//                 child: Column(children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.05,
//               ),
//               FutureBuilder(
//                 future: getusers(),
//                 builder: (context, AsyncSnapshot snapshot) {
//                   if (snapshot.hasData) {
//                     return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.05,
//                           ),

//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.9,
//                             height: MediaQuery.of(context).size.height * 0.2,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Color.fromRGBO(119, 146, 187, 0.322)),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                               SizedBox(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.02,
//                                 ),
//                                 Row(
//                                 children: [Text("a"),
//                                 Column(children: [Weather_Data.Data_Weather_text(
//                                     "${snapshot.data.main.temp}°", 20),
//                                 ],),
//                                 Column(children: [Weather_Data.Data_Weather_text(
//                                     "${snapshot.data.name}", 30),],)
//                                 ],),
//                                 Column(children: [Text("b"), Row(mainAxisAlignment: MainAxisAlignment.end,     children: [Text("d")],)]),

//                                 // SizedBox(
//                                 //   height:
//                                 //       MediaQuery.of(context).size.height * 0.02,
//                                 // ),
//                                 // Weather_Data.Data_Weather_text(
//                                 //     "${snapshot.data.main.temp}°", 20),
//                                 // Weather_Data.Data_Weather_text(
//                                 //     "${snapshot.data.name}", 30),
//                                     // Row(
//                                     //   mainAxisAlignment: MainAxisAlignment.end,
//                                     //   children: [
//                                     //     Image(width: 100,height: 100,
//                                     //       image: NetworkImage('https://thumbs.gfycat.com/RapidDimEider-max-1mb.gif')),
//                                     //   ],
//                                     // )
//                               ],
//                             ),
//                           ),
                         

//                           Text(
//                             snapshot.data.weather[0].description,
//                             style: TextStyle(
//                                 color: App_Colors.app_white_color,
//                                 fontSize: 18),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                               width: MediaQuery.of(context).size.width * 0.8,
//                               height: MediaQuery.of(context).size.height * 0.2,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromRGBO(119, 146, 187, 0.322)),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Text(
//                                         "1 AM",
//                                         style: TextStyle(
//                                             color: App_Colors.app_white_color,
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Icon(
//                                         Icons.nights_stay_sharp,
//                                         color: App_Colors.app_white_color,
//                                         size: 30,
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Text(
//                                         "21°",
//                                         style: TextStyle(
//                                             color: App_Colors.app_white_color,
//                                             fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: 25,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Text(
//                                         "2 AM",
//                                         style: TextStyle(
//                                             color: App_Colors.app_white_color,
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Icon(
//                                         Icons.nights_stay_sharp,
//                                         color: App_Colors.app_white_color,
//                                         size: 30,
//                                       ),
//                                       SizedBox(
//                                         height: 15,
//                                       ),
//                                       Text(
//                                         "20°",
//                                         style: TextStyle(
//                                             color: App_Colors.app_white_color,
//                                             fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ))
//                         ]);
//                   } else {
//                     return Center(child: CircularProgressIndicator());
//                   }
//                 },
//               )
//             ]))));
//   }
// }
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:weatherapp/Controller/home_controller.dart';
import 'package:weatherapp/constants/Colors.dart';

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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thermostat,
                                    color: App_Colors.app_red_theme,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "${snapshot.data.main.tempMin}°",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thermostat,
                                    color: App_Colors.app_blue_theme,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "${snapshot.data.main.tempMax}°",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "No Precipitation for at least 180 min",
                          style: TextStyle(
                               color: App_Colors.app_white_color, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 460,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(84, 0, 0, 0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "1 AM",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.nights_stay_sharp,
                                     color: App_Colors.app_white_color,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "21°",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "2 AM",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.nights_stay_sharp,
                                     color: App_Colors.app_white_color,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
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
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "3 AM",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.nights_stay_sharp,
                                     color: App_Colors.app_white_color,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
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
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "4 AM",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.cloud,
                                     color: App_Colors.app_white_color,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "18°",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "5 AM",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.cloudy_snowing,
                                     color: App_Colors.app_white_color,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "15°",
                                    style: TextStyle(
                                         color: App_Colors.app_white_color,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 460,
                          height: 480,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(84, 0, 0, 0)),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "24/2",
                                          style: TextStyle(
                                               color: App_Colors.app_white_color,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Fri",
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
                                     Image(height: 40,
                                      width: 40,  image: NetworkImage( "https://assets5.lottiefiles.com/packages/lf20_yKGuIT.json",)),
                                    
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
                                   Image(height: 40,
                                      width: 40,  image: NetworkImage( " https://assets5.lottiefiles.com/packages/lf20_yKGuIT.json",)),
                                 
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
                                  Image(height: 40,
                                      width: 40,  image: NetworkImage( "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",)),
                                  
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
                                  Image( height: 40,
                                      width: 40,  image: NetworkImage(   "https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",)),
                                  
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
                                  Image(  height: 40,
                                      width: 40,image: NetworkImage("https://assets8.lottiefiles.com/temp/lf20_VAmWRg.json",)),

                                 
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
                                  Image( height: 40,
                                      width: 40,
                                    image: NetworkImage("https://assets10.lottiefiles.com/packages/lf20_trr3kzyu.json",
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