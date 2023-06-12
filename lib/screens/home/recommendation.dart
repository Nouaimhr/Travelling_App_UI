import 'package:flutter/material.dart';
import 'package:travelling_app/constants/colors.dart';
import 'package:travelling_app/model/places.dart';
import 'package:travelling_app/shared_widgets/big_text.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class HomeRecommendation extends StatelessWidget {
  const HomeRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.maxFinite,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: 'Recommendation'),
                Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'cream',
                    fontWeight: FontWeight.bold,
                    color: MyColors.main,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 270,
            width: double.maxFinite,
            child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              itemCount: places.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/details', arguments: {
                      'location ': places[index].location,
                      'img': places[index].img,
                      'title': places[index].title,
                      'rating': places[index].rating,
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/${places[index].img}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 200,
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                child: Text(
                                  places[index].title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'cream',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  SmallText(
                                      text: places[index].rating.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: MyColors.main),
                            SmallText(text: places[index].location),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
