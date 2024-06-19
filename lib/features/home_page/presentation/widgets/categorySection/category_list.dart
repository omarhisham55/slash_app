import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String, String> categories = AppImages.categoriesImg;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => _categoryItem(
          categories.entries.elementAt(index),
        ),
      ),
    );
  }

  Widget _categoryItem(MapEntry item) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.dark29,
          child: Image.asset(
            item.value,
            width: 30,
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
}
