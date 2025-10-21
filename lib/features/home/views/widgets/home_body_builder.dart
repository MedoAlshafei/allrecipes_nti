import 'package:flutter/material.dart';

class HomeBodyBuilder extends StatelessWidget {
  const HomeBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Image.network(
                "https://www.allrecipes.com/thmb/hQJ9hR2s2rZ1iY-VI0T7R1AWXaA=/400x250/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7482913-texas-chili-ddmfs-4x3-1251-104a7c3b12984d778dd82e6873bb245f.jpg",
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
