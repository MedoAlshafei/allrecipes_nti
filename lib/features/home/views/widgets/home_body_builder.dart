import 'package:allrecipes/features/home/views/widgets/home_content_header_builder.dart';
import 'package:allrecipes/features/home/views/widgets/the_latest_builder.dart';
import 'package:allrecipes/features/home/views/widgets/trusted_recipe_banner.dart';
import 'package:flutter/material.dart';

class HomeBodyBuilder extends StatelessWidget {
  const HomeBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final width = size.width;
    // final height = size.height;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: HomeContentHeaderBuilder()),
        SliverToBoxAdapter(child: TrustedRecipeBannerBuilder()),
        SliverToBoxAdapter(child: TheLatestBuilder()),
      ],
    );
  }
}
