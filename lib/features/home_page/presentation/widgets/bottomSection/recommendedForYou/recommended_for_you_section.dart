import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bottomSection/bottom_list.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_title/section_title.dart';

class RecommendedForYouSection extends StatelessWidget {
  const RecommendedForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        final HomePageCubit manager = HomePageCubit.get(context);
        return Column(
          children: [
            const SectionTitle(title: "Recommended for you"),
            BottomList(products: manager.recommendedForYou),
          ],
        );
      },
    );
  }
}
