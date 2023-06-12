// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_app/screens/home/category.dart';
import 'package:travelling_app/screens/home/header_widget.dart';
import 'package:travelling_app/screens/home/location_widget.dart';
import 'package:travelling_app/screens/home/nearby.dart';
import 'package:travelling_app/screens/home/recommendation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: const [
              SizedBox(height: 40),
              HeaderWidget(),
              SizedBox(height: 30),
              HomeLocation(),
              SizedBox(height: 10),
              HomeCategory(),
              SizedBox(height: 30),
              HomeRecommendation(),
              SizedBox(height: 0),
              HomeNearbyPlaces(),
            ],
          ),
        ),
      ),
    );
  }
}
