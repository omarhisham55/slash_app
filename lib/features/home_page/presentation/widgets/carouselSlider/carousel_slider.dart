import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';

class OffersSlider extends StatelessWidget {
  const OffersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
      final HomePageCubit manager = HomePageCubit.get(context);
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: CarouselSlider.builder(
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
                aspectRatio: 2,
                viewportFraction: .9,
                animateToClosest: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                disableCenter: true,
                padEnds: false,
                onPageChanged: (index, reason) =>
                    manager.changeCarouselPage(index),
              ),
            ),
          ),
          DotsIndicator(
            dotsCount: 2,
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
    });
  }
}
