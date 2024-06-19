import 'package:flutter/widgets.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/bottom_list.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_title/section_title.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageCubit manager = HomePageCubit.get(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const SectionTitle(title: "Best Selling"),
          BottomList(products: manager.bestSelling),
        ],
      ),
    );
  }
}
