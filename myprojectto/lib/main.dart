
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojectto/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your applicration.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' my app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

