import 'package:flutter/material.dart';
import 'package:travelling_app/shared_widgets/big_text.dart';
import 'package:travelling_app/shared_widgets/home_icon.dart';
import 'package:travelling_app/shared_widgets/small_text.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: 'Welcome Again,',
              ),
              SmallText(text: 'NouAim Harrar')
            ],
          ),
          Row(
            children: [
              HomeIcon(img: 'search.png'),
              const SizedBox(width: 10),
              HomeIcon(img: 'notification.png'),
            ],
          ),
        ],
      ),
    );
  }
}
