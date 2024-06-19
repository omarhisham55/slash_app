import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/config/bloc_observer.dart';
import 'package:slash_app/config/theme/theme.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';
import 'package:slash_app/features/home_page/presentation/pages/home_page.dart';
import 'package:slash_app/features/navigation/cubit/navigation_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavCubit()),
        BlocProvider(create: (context) => HomePageCubit()),
      ],
      child: MaterialApp(
        title: 'Slash App',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const HomePage(),
      ),
    );
  }
}
