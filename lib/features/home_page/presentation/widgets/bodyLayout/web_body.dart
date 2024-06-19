import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/bestSelling/best_selling_section.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/newArrival/new_arrival_section.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/recommendedForYou/recommended_for_you_section.dart';
import 'package:slash_app/features/home_page/presentation/widgets/carouselSlider/carousel_slider.dart';
import 'package:slash_app/features/home_page/presentation/widgets/categorySection/category_section.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            OffersSlider(),
            CategorySection(),
            BestSellingSection(),
            NewArrivalSection(),
            RecommendedForYouSection()
          ],
        ),
      ),
    );
  }
}
