import 'package:flutter/material.dart';

class DetailsRecipe extends StatelessWidget {
  const DetailsRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 28),
        ),
        title: Text(
          'allrecipes',
          style: TextStyle(
            color: Colors.orange[900],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.orange[800],
                child: Icon(Icons.person, color: Colors.white, size: 28),
              ),
              SizedBox(width: 16),
              Text(
                'Log In',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              // SizedBox(width: 16),
              VerticalDivider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Icon(Icons.favorite, color: Colors.pink, size: 28),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recipe Title
              Text(
                "Angela's Awesome Chicken Enchiladas",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      SizedBox(width: width * 0.01),
                      Text(
                        "4.8",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: width * 0.04),
                      Text(
                        "(1.2M Ratings)",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    children: [
                      Text(
                        "2,3152 Reviews",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: width * 0.04),
                      Text(
                        "356 Photos",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              // Recipe full Description
              Text(
                "These delicious chicken enchiladas are packed with flavor and easy to make. Perfect for a weeknight dinner! Perfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinnerPerfect for a weeknight dinner",
                softWrap: true,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.02),
              Image.network(
                "https://www.allrecipes.com/thmb/2UB5Gf_1xta1nqdRHYzEzRIoukA=/240x160/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ar-aldi-dinner-shortcut-ar-aldi-4x3-81108591ff5c4d15acf44789ab36193c.jpg",
                width: width * 0.9,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
              // ingredients and instructions will be here
              SizedBox(height: height * 0.02),
              IngredientsBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

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
