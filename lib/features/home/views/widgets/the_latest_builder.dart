import 'package:allrecipes/features/details_recipe/views/screen/details_recipe.dart';
import 'package:flutter/material.dart';

class TheLatestBuilder extends StatelessWidget {
  const TheLatestBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The Latest",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Divider(color: Colors.orange[500], thickness: 6),
          SizedBox(height: 4),
          theLatestBuilderCard(context),
          theLatestBuilderCard(context),
          theLatestBuilderCard(context),
          theLatestBuilderCard(context),
          theLatestBuilderCard(context),
        ],
      ),
    );
  }

  Widget theLatestBuilderCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => DetailsRecipe()));
      },
      child: ListTile(
        leading: Image.network(
          "https://www.allrecipes.com/thmb/2UB5Gf_1xta1nqdRHYzEzRIoukA=/240x160/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ar-aldi-dinner-shortcut-ar-aldi-4x3-81108591ff5c4d15acf44789ab36193c.jpg",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(
          "15 Easy Dinner Recipes You Can Make With Aldi Ingredients",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
