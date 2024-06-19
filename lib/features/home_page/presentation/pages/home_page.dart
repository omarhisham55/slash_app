import 'package:flutter/material.dart';
import 'package:slash_app/config/responsive/responsive.dart';
import 'package:slash_app/features/home_page/presentation/pages/web_home_layout.dart';
import 'package:slash_app/features/navigation/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _mobileView(context),
      web: _webView(context),
    );
  }

  Widget _mobileView(BuildContext context) {
    return const Navigation();
  }

  Widget _webView(BuildContext context) {
    return const WebHomeLayout();
  }
}
