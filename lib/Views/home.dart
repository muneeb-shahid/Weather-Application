import 'package:flutter/material.dart';
import 'package:weatherapp/Views/users.dart';

import '../Controller/home_controller.dart';

class Home_Screeen extends StatefulWidget {
  const Home_Screeen({super.key});

  @override
  State<Home_Screeen> createState() => _Home_ScreeenState();
}

class _Home_ScreeenState extends State<Home_Screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: getusers(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Users(username: snapshot.data.name)));
                    },
                    child: Text(snapshot.data.name),
                  )
                  // Text(snapshot.data.name),
                  // Text('${snapshot.data.id}'),
                  // Text('${snapshot.data.timezone}'),
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
