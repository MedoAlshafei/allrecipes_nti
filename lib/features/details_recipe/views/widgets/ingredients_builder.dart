import 'package:flutter/material.dart';

class IngredientsBuilder extends StatelessWidget {
  const IngredientsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingredients",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        SizedBox(height: height * 0.02),
        builderIngredients(width, height),
        builderIngredients(width, height),
        builderIngredients(width, height),
      ],
    );
  }

  Widget builderIngredients(double width, double height) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: Colors.orange[800], radius: 5),
        SizedBox(width: width * 0.02),
        Text(
          "2 cups shredded cooked chicken",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: height * 0.04),
      ],
    );
  }
}
