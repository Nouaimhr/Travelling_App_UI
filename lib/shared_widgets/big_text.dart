import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  BigText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: Colors.grey[850],
        fontFamily: 'cream',
      ),
    );
  }
}
