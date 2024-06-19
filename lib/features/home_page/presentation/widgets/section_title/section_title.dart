import 'package:flutter/material.dart';
import 'package:slash_app/config/responsive/responsive.dart';
import 'package:slash_app/core/utils/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _baseTitle(),
      web: _baseTitle(titleSize: 32),
    );
  }

  Widget _baseTitle({double? titleSize = 22}) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w600),
        )),
        const Text(
          "See all",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.lightE4,
          ),
          child: const Icon(
            Icons.chevron_right,
            size: 30,
          ),
        )
      ],
    );
  }
}
