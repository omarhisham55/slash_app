import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';

class SearchFilterBar extends StatelessWidget {
  final bool isWeb;
  const SearchFilterBar({super.key, this.isWeb = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //search bar
        Expanded(
          child: SearchBar(
            leading: const Icon(
              Icons.search,
              color: AppColors.lightF5,
              size: 30,
            ),
            elevation: const MaterialStatePropertyAll(0),
            surfaceTintColor: const MaterialStatePropertyAll(AppColors.lightE4),
            backgroundColor: const MaterialStatePropertyAll(AppColors.lightE4),
            hintText: "Search here..",
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        //filter button
        Visibility(
          visible: !isWeb,
          child: Container(
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: AppColors.lightE4,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ImageIcon(
              AssetImage(AppImages.filter),
              color: AppColors.lightF5,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
