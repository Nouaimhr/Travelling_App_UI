// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_app/model/category.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,

      // creating category list
      child: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            // Decorating the list card.
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    'assets/${categories[index].img}',
                  ),
                  width: 30,
                ),
                SizedBox(width: 15),
                SmallText(text: categories[index].name)
              ],
            ),
          );
        },
      ),
    );
  }
}
