import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
    this.subline,
  }) : super(key: key);
  final String text, image, subline;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionteScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 12, left: 12, right: 12),
          child: Text(
            subline,
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionteScreenHeight(260),
        ),
      ],
    );
  }
}
