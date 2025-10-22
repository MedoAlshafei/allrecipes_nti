import 'package:flutter/material.dart';

class HomeContentHeaderBuilder extends StatelessWidget {
  const HomeContentHeaderBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    // random recipe image and description

    // final String imageUrl;
    // final String category;
    // final String description;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://www.allrecipes.com/thmb/hQJ9hR2s2rZ1iY-VI0T7R1AWXaA=/400x250/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7482913-texas-chili-ddmfs-4x3-1251-104a7c3b12984d778dd82e6873bb245f.jpg",
            width: 400,
            height: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(height: height * 0.01),

          //  category;
          Text(
            "EVERYDAY COOKING",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: height * 0.01),

          // First 3 Lines in Description
          Text(
            "5 Easy Chili Recipes That Will Never Get Old",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.01),

          // Full Description
          Text(
            "These easy and comforting chili recipes each have their own spin, but they're all packed with crowd-pleasing flavor.",
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: height * 0.01),
        ],
      ),
    );
  }
}
