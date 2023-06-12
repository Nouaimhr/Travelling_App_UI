import 'package:flutter/material.dart';
import 'package:travelling_app/constants/colors.dart';
import 'package:travelling_app/shared_widgets/big_text.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class DetailsInformation extends StatelessWidget {
  String title;
  String img;
  double rating;
  String location;
  DetailsInformation({
    super.key,
    required this.title,
    required this.img,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Row(
            children: [
              BigText(text: title),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SmallText(text: rating.toString()),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Icon(Icons.location_on, color: MyColors.main),
              SmallText(text: 'French Polynesia'),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SmallText(
              text:
                  'this would be the description of the hotel or the place in order to give more information to the user.'),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: BigText(text: 'More Images'),
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          width: double.maxFinite,
          child: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 20),
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/${index}.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
