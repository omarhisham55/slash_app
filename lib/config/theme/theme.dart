import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    elevation: 0,
  ),
  fontFamily: "Urbanist",
);
