import 'package:flutter/material.dart';

class TrustedRecipeBannerBuilder extends StatelessWidget {
  const TrustedRecipeBannerBuilder({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.12,
      width: double.infinity,
      color: Colors.blue[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "America's",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: width * 0.02),
              Text(
                "#1 Trusted Recipe Resource",
                style: TextStyle(
                  color: Colors.amber[400],
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(height: height / 200),
          Row(
            spacing: width * 0.08,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              recipeResourceBuilder(
                width,
                height,
                Color(0xFF2EC5B6),
                "51K",
                "Original Recipes",
              ),
              recipeResourceBuilder(
                width,
                height,
                Color(0xFFF15025),
                "7M+",
                "Ratings & Reviews",
              ),
              recipeResourceBuilder(
                width,
                height,
                Color(0xFFE7AB46),
                "67M",
                "Home Cooks",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget recipeResourceBuilder(
    double width,
    double height,
    Color circleColor,
    String number,
    String text,
  ) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 9,
              child: CircleAvatar(backgroundColor: circleColor, radius: 8),
            ),
            SizedBox(width: width * 0.01),
            Text(
              number,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.001),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
