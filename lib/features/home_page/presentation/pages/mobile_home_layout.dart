import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/presentation/widgets/appbar/appbars.dart';
import 'package:slash_app/features/home_page/presentation/widgets/bodyLayout/mobile_body.dart';

class MobileHomeLayout extends StatelessWidget {
  const MobileHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mobileAppbar(),
      body: const MobileBody(),
    );
  }
}
