import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/features/home_page/presentation/widgets/appbar/dropdown_title.dart';
import 'package:slash_app/features/home_page/presentation/widgets/appbar/web_title.dart';

AppBar mobileAppbar() {
  return AppBar(
    elevation: 0,
    leadingWidth: 110,
    leading: const Padding(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Text(
        "Slash.",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: AppColors.dark29,
        ),
      ),
    ),
    centerTitle: true,
    title: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.location_on),
        SizedBox(width: 5),
        SizedBox(
          width: 85,
          child: DropDownTitle(),
        ),
      ],
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(
              Icons.notifications_outlined,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

AppBar webAppbar() {
  return AppBar(
    toolbarHeight: 70,
    elevation: 0,
    leadingWidth: 110,
    leading: const Center(
      child: Text(
        "Slash.",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 32,
          color: AppColors.dark29,
        ),
      ),
    ),
    centerTitle: true,
    title: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.location_on),
        SizedBox(width: 5),
        WebTitle(),
      ],
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(
              Icons.notifications_outlined,
              size: 40,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      )
    ],
  );
}
