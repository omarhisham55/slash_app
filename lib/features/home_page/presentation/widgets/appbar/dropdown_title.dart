import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';

class DropDownTitle extends StatelessWidget {
  const DropDownTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      icon: const Icon(Icons.keyboard_arrow_down),
      items: [
        DropdownMenuItem(
            child: RichText(
          text: const TextSpan(
            text: "Nasr City\n",
            style: TextStyle(
              color: AppColors.dark31,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: "Cairo",
                style: TextStyle(
                    color: AppColors.dark31,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ],
          ),
        )),
      ],
      onChanged: (value) {},
    );
  }
}
