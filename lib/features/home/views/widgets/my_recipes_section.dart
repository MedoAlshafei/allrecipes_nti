import 'package:flutter/material.dart';

class MyRecipesSection extends StatelessWidget {
  const MyRecipesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final width = size.width;
    // final height = size.height;
    return Container(
      color: Color(0xffF5F6EA),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.pink, size: 46),
                SizedBox(width: 8),
                Text(
                  "My",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w900,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  "recipes",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Text(
              'Start Saving These Dishes',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Keep your Allrecipes favorites in MyRecipes for free.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 4),
            RecipesCard(),
          ],
        ),
      ),
    );
  }
}

class RecipesCard extends StatelessWidget {
  const RecipesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.network(
              "https://www.allrecipes.com/thmb/hQJ9hR2s2rZ1iY-VI0T7R1AWXaA=/400x250/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7482913-texas-chili-ddmfs-4x3-1251-104a7c3b12984d778dd82e6873bb245f.jpg",
              height: 200,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Angela's Awesome Chicken Enchiladas",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.black, size: 20),
                    SizedBox(width: 4),
                    Text(
                      "3.8",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
