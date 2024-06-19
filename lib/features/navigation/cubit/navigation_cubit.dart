import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/presentation/pages/mobile_home_layout.dart';
part 'navigation_state.dart';

class NavCubit extends Cubit<NavState> {
  NavCubit() : super(NavInitialState());

  static NavCubit get(context) => BlocProvider.of<NavCubit>(context);

  int currentIndex = 0;
  changeIndex(int index) {
    currentIndex = index;
    emit(NavIndexState(index: index));
  }

  Widget getCurrentPage() {
    return switch (currentIndex) {
      0 => const MobileHomeLayout(),
      int() => const Scaffold(),
    };
  }
}
