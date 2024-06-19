import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_app/features/home_page/presentation/widgets/appbar/dropdown_title.dart';
import 'package:slash_app/features/home_page/presentation/widgets/searchBar/searchbar.dart';

class WebTitle extends StatelessWidget {
  const WebTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropDownTitle(),
          SizedBox(width: 10),
          Expanded(child: SearchFilterBar(isWeb: true)),
        ],
      ),
    );
  }
}
