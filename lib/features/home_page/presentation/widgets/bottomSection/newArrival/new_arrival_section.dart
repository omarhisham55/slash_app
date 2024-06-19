import 'package:flutter/widgets.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/bottom_list.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_title/section_title.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageCubit manager = HomePageCubit.get(context);
    return Column(
      children: [
        const SectionTitle(title: "New Arrival"),
        BottomList(products: manager.newArrival),
      ],
    );
  }
}
