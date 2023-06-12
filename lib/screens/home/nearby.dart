import 'package:flutter/material.dart';
import 'package:travelling_app/constants/colors.dart';
import 'package:travelling_app/model/places.dart';
import 'package:travelling_app/shared_widgets/big_text.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class HomeNearbyPlaces extends StatelessWidget {
  const HomeNearbyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.maxFinite,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: 'Nearby your place'),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            height: 600,
            width: double.maxFinite,
            child: ListView.builder(
              physics:
                  BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              itemCount: places.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/${places[index].img}'),
                              fit: BoxFit.cover),
                        ),
                      ),
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
                                Icon(Icons.star, color: Colors.amber, size: 20),
                                SmallText(
                                    text: places[index].rating.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: MyColors.main),
                          SmallText(text: places[index].location),
                        ],
                      ),
                    ],
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
