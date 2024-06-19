import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
