import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'View/Clockapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clock Meeting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClockMeetingPage(),
    );
  }
}

