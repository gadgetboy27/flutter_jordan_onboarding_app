import 'package:flutter/material.dart';
import 'package:flutter_jordan_onboarding_app/utilities/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Air Jordans',
      theme: ThemeData(
     
        primarySwatch: Colors.purple,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

