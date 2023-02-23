import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherapp/Controller/home_controller.dart';

class Users extends StatelessWidget {
  final username;
  const Users({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: FutureBuilder(
            future: getusersByName(username),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Center(
                    child: Column(
                  children: [
                    Text(
                      snapshot.data.name,
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "${snapshot.data.id}",
                      style: TextStyle(fontSize: 40),
                    ),
                   
                  ],
                ));
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
}