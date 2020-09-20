import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": 'TasawaQ',
      "description": 'Only 3 simple steps!',
      "image": 'assets/images/splash_1.png',
    },
    {
      "text": 'Browse',
      "description": 'A full catalog of premium items that will fit your needs',
      "image": 'assets/images/splash_0.png',
    },
    {
      "text": 'Order',
      "description":
          'Just click the "+" button, and the item will be aded to your cart',
      "image": 'assets/images/splash_3.png',
    },
    {
      "text": 'Enjoy',
      "description":
          'fastest delivery service around the world, to make you enjoy your items faster',
      "image": 'assets/images/splash_2.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    debugPrint('movieTitle: $splashData');
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                  subline: splashData[index]['description'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionteScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColorLight,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
