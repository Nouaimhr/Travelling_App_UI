import 'package:flutter/material.dart';
import 'package:travelling_app/constants/colors.dart';

class DetailsTopIcons extends StatelessWidget {
  IconData icon;
  DetailsTopIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white54,
      child: Icon(
        icon,
        color: MyColors.main,
      ),
    );
  }
}
