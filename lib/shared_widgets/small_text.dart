import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;

  SmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 17,
        fontFamily: 'cream',
      ),
    );
  }
}
