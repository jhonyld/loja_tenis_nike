import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home/home.dart';
import 'screens/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nike Store XE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Gilroy",
        primaryColor: Colors.blueGrey[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Stack(
        children: <Widget>[
          Profile(),
          Home(),
        ],
      ),
    );
  }
}
