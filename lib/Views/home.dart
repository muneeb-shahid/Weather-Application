// import 'package:flutter/material.dart';
// import 'package:weatherapp/Views/users.dart';
// import '../Views/drawer.dart';
// import '../Controller/home_controller.dart';
// import 'drawer.dart';



// class Home_Screeen extends StatefulWidget {
//      Home_Screeen({super.key});

//   @override
//   State<Home_Screeen> createState() => _Home_ScreeenState();
// }

// class _Home_ScreeenState extends State<Home_Screeen> {
// // TextEditingController searchCity = TextEditingController();
//   Icon customIcon =    Icon(Icons.search);
//   Widget customSearchBar =    Text('My Personal Journal');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: customSearchBar,

//           automaticallyImplyLeading: false,
//           actions: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   if (customIcon.icon == Icons.search) {
//                     customIcon =    Icon(Icons.cancel);
//                     customSearchBar =  ListTile(
//                       leading: Icon(
//                         Icons.search,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                       title: TextField(
//                         controller: name,
                       
//                         decoration: InputDecoration(
//                           hintText: 'type in journal name...',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontStyle: FontStyle.italic,
//                           ),
//                           border: InputBorder.none,
//                         ),
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     );
//                   } else {
//                     customIcon =    Icon(Icons.search);
//                     customSearchBar =    Text('My Personal Journal');
//                   }
//                 });
//               },
//               icon: customIcon,
//             )
//           ],
//           centerTitle: true,
//           // elevation: 0,
//           // backgroundColor: App_Colors.app_black_theme,
//         ),
//         // drawer: Drawer(
//         //   backgroundColor: App_Colors.app_white_theme,
//         //   child: ListView(
//         //     padding: EdgeInsets.only(top: 200, left: 20, right: 20),
//         //     children: [
//         //       ListTile(
//         //         leading: Image(
//         //             image: AssetImage('assets/images/drawer shop icon.png')),
//         //         title: Center(
//         //             child:    Text(
//         //           'Shop',
//         //           style: TextStyle(
//         //               fontFamily: 'Poppins',
//         //               color: Colors.white,
//         //               fontSize: 22,
//         //               fontWeight: FontWeight.w600),
//         //         )),
//         //         onTap: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //       ListTile(
//         //         leading: Image(
//         //             image: AssetImage('assets/images/DRAWER PLANT CARE.png')),
//         //         title: Center(
//         //             child:    Text(
//         //           'Plant Care',
//         //           style: TextStyle(
//         //             fontSize: 22,
//         //             fontWeight: FontWeight.w600,
//         //             fontFamily: 'Poppins',
//         //             color: Colors.white,
//         //           ),
//         //         )),
//         //         onTap: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //       ListTile(
//         //         leading: Image(
//         //             image: AssetImage('assets/images/drawer community.png')),
//         //         title: Center(
//         //             child:    Text(
//         //           'Community',
//         //           style: TextStyle(
//         //               fontFamily: 'Poppins',
//         //               color: Colors.white,
//         //               fontSize: 22,
//         //               fontWeight: FontWeight.w600),
//         //         )),
//         //         onTap: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //       ListTile(
//         //         leading: Image(
//         //             image: AssetImage('assets/images/drawer account.png')),
//         //         title: Center(
//         //             child:    Text(
//         //           'My Account',
//         //           style: TextStyle(
//         //               fontFamily: 'Poppins',
//         //               color: Colors.white,
//         //               fontSize: 22,
//         //               fontWeight: FontWeight.w600),
//         //         )),
//         //         onTap: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //       ListTile(
//         //         leading:
//         //             Image(image: AssetImage('assets/images/drawer truck.png')),
//         //         title: Center(
//         //             child:    Text(
//         //           'Track Order',
//         //           style: TextStyle(
//         //               fontFamily: 'Poppins',
//         //               color: Colors.white,
//         //               fontSize: 22,
//         //               fontWeight: FontWeight.w600),
//         //         )),
//         //         onTap: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //       SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.1,
//         //       ),
//         //       ListTile(
//         //         title: Center(
//         //             child:    Text(
//         //           'Get the dirt',
//         //           style: TextStyle(
//         //               fontFamily: 'Poppins',
//         //               color: Colors.white,
//         //               fontSize: 20,
//         //               fontWeight: FontWeight.w700),
//         //         )),
//         //       ),
//         //       SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.02,
//         //       ),

//         //       SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.02,
//         //       ),
//         //       Center(
//         //         child: Text(
//         //             'FAQ',
//         //             style: TextStyle(
//         //                 fontFamily: 'Poppins',
//         //                 color: Colors.white,
//         //                 fontSize: 18,
//         //                 fontWeight: FontWeight.w600),
//         //           ),
//         //       ),SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.02,
//         //       ),
//         //         Center(
//         //           child: Text(
//         //             'About US',
//         //             style: TextStyle(
//         //                 fontFamily: 'Poppins',
//         //                 color: Colors.white,
//         //                 fontSize: 18,
//         //                 fontWeight: FontWeight.w600),
//         //           ),
//         //         ),SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.02,
//         //       ),
//         //         Center(
//         //           child: Text(
//         //             'Contact Us',
//         //             style: TextStyle(
//         //                 fontFamily: 'Poppins',
//         //                 color: Colors.white,
//         //                 fontSize: 18,
//         //                 fontWeight: FontWeight.w600),
//         //           ),
//         //         ),
//         //         SizedBox(
//         //         height: MediaQuery.of(context).size.height * 0.1,
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         body: FutureBuilder(
//           future: getusers(),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               return Column(
//                 children: [
//                   // ElevatedButton(
//                   //   onPressed: () {
//                   //     Navigator.push(
//                   //         context,
//                   //         MaterialPageRoute(
//                   //             builder: (context) =>
//                   //                 Users(username: snapshot.data.name)));
//                   //   },
//                   //   child: Text(snapshot.data.name),
//                   // )
//                   // Text(snapshot.data.name),
//                   // Text('${snapshot.data.id}'),
//                   // Text('${snapshot.data.timezone}'),
//                 ],
//               );
//             } else {
//               return Center(child: CircularProgressIndicator());
//             }
//           },
//         ));
//   }
// }

