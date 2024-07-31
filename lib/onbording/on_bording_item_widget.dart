import 'package:flutter/material.dart';

class OnBoardingItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnBoardingItemWidget(
      {required this.image,
      required this.title,
      required this.subTitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Image.asset(image),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(
                color: Color(0xff3A3A3A),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: Color(0xff3A3A3A),
              fontSize: 16,
              fontWeight: FontWeight.w300,
              decorationColor: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
