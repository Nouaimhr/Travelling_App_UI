// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_app/screens/details/details.dart';
import 'package:travelling_app/screens/home/home.dart';
import 'package:travelling_app/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelling App',
      initialRoute: '/login',
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
