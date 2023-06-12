// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_app/screens/details/bottom_section.dart';
import 'package:travelling_app/screens/details/header_part.dart';
import 'package:travelling_app/screens/details/information.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    Map data;

    data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              DetailsHeader(
                img: data['img'],
              ),
              Container(
                width: double.maxFinite,
                height: screenSize * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    DetailsInformation(
                      location: data['location'],
                      img: data['img'],
                      title: data['title'],
                      rating: data['rating'],
                    ),
                  ],
                ),
              ),
            ],
          ),
          BottomSection(),
        ],
      ),
    );
  }
}
