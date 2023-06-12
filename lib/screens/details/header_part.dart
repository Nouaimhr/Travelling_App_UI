import 'package:flutter/material.dart';
import 'package:travelling_app/screens/details/top_icons.dart';

class DetailsHeader extends StatelessWidget {
  String img;
  DetailsHeader({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 40,
        ),
        alignment: Alignment.topCenter,
        width: double.maxFinite,
        height: screenSize * 1,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
                image: AssetImage('assets/${img}'), fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: DetailsTopIcons(icon: Icons.arrow_back_ios)),
            DetailsTopIcons(icon: Icons.bookmarks_outlined),
          ],
        ));
  }
}
