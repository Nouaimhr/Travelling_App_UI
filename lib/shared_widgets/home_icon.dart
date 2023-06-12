import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  String img;
  HomeIcon({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: Image(
        image: AssetImage('assets/$img'),
        width: 25,
      ),
    );
  }
}
