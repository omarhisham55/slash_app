import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/presentation/widgets/appbar/appbars.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bodyLayout/web_body.dart';

class WebHomeLayout extends StatelessWidget {
  const WebHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: webAppbar(),
      body: const WebBody(),
    );
  }
}
