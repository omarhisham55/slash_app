import 'package:flutter/material.dart';
import 'package:slash_app/config/responsive/responsive.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String, String> categories = AppImages.categoriesImg;
    return ResponsiveLayout(
      mobile: _baseCategoryList(categories: categories),
      web: _baseCategoryList(
        categories: categories,
        height: 130,
        itemRadius: 50,
        separator: 20,
      ),
    );
  }

  Widget _categoryItem(MapEntry item, double? itemRadius) {
    return Column(
      children: [
        CircleAvatar(
          radius: itemRadius,
          backgroundColor: AppColors.dark29,
          child: Image.asset(
            item.value,
            width: itemRadius == 40 ? 30 : 40,
            color: Colors.white,
          ),
        ),
        Text(
          item.key,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _baseCategoryList({
    required Map<String, String> categories,
    double? height = 110,
    double? itemRadius = 40,
    double? separator = 10,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: separator!),
        itemBuilder: (context, index) => _categoryItem(
          categories.entries.elementAt(index),
          itemRadius,
        ),
      ),
    );
  }
}
