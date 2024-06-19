import 'package:flutter/widgets.dart';
import 'package:slash_app/features/home_page/presentation/widgets/categorySection/category_list.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_title/section_title.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SectionTitle(title: "Category"),
          CategoryList(),
        ],
      ),
    );
  }
}
