import 'package:flutter/material.dart';
import 'package:travelling_app/constants/colors.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        width: double.maxFinite,
        height: screenSize * .28,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$25',
                  style: TextStyle(
                    color: MyColors.main,
                    fontSize: 20,
                    fontFamily: 'cream',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SmallText(text: ' /Person'),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 17,
                ),
                decoration: BoxDecoration(
                  color: MyColors.main,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'cream',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
