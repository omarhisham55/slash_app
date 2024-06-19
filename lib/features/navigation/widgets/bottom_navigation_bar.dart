import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';
import 'package:slash_app/features/navigation/cubit/navigation_cubit.dart';

class BottomNavBar extends StatelessWidget {
  final NavCubit manager;
  const BottomNavBar({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: manager.currentIndex,
      onTap: manager.changeIndex,
      selectedItemColor: AppColors.dark29,
      unselectedItemColor: AppColors.dark29,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        _bottomItem(
          "Home",
          AppImages.homeOutlined,
          AppImages.homefilled,
        ),
        _bottomItem(
          "Favorites",
          AppImages.favourtieOutlined,
          AppImages.favourtiefilled,
        ),
        _bottomItem(
          "My Cart",
          AppImages.shoppingCartOutlined,
          AppImages.shoppingCartfilled,
        ),
        _bottomItem(
          "Profile",
          AppImages.profileOutlined,
          AppImages.profilefilled,
        ),
      ],
    );
  }

  BottomNavigationBarItem _bottomItem(
    String label,
    String icon,
    String activeIcon,
  ) {
    return BottomNavigationBarItem(
      activeIcon: ImageIcon(AssetImage(activeIcon), size: 25),
      icon: ImageIcon(AssetImage(icon), size: 25),
      label: label,
    );
  }
}
