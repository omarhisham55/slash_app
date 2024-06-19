import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/config/responsive/responsive.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';

class OffersSlider extends StatelessWidget {
  const OffersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        final HomePageCubit manager = HomePageCubit.get(context);
        return Column(
          children: [
            ResponsiveLayout(
              mobile: _baseCarousel(
                manager: manager,
                padding: const EdgeInsets.only(top: 30),
                viewportFraction: .9,
              ),
              web: _baseCarousel(manager: manager, aspectRatio: 2.3),
            ),
            const SizedBox(height: 10),
            DotsIndicator(
              dotsCount: 2,
              onTap: manager.changeCarouselPage,
              position: manager.currentCarouselPage,
              decorator: DotsDecorator(
                size: const Size.square(10),
                activeSize: const Size(18, 10),
                activeColor: AppColors.dark29,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget _baseCarousel({
    required HomePageCubit manager,
    EdgeInsets? padding = EdgeInsets.zero,
    double? viewportFraction = 1,
    double? aspectRatio = 2,
  }) {
    return Padding(
      padding: padding!,
      child: CarouselSlider.builder(
        carouselController: manager.carouselController,
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: index == 0
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      AppImages.carouselImg,
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
          );
        },
        options: CarouselOptions(
          aspectRatio: aspectRatio!,
          viewportFraction: viewportFraction!,
          animateToClosest: true,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          disableCenter: true,
          padEnds: false,
          onPageChanged: (index, reason) => manager.changeCarouselPage(index),
        ),
      ),
    );
  }
}
