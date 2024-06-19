import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/navigation/cubit/navigation_cubit.dart';
import 'package:slash_app/features/navigation/widgets/bottom_navigation_bar.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(builder: (context, state) {
      final NavCubit manager = NavCubit.get(context);
      return Scaffold(
        body: manager.getCurrentPage(),
        bottomNavigationBar: BottomNavBar(manager: manager),
      );
    });
  }
}
