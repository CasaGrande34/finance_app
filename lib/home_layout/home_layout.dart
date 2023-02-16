import 'package:finance_app/home_layout/web/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../utils/responsive.dart';
import 'mobile/screens/home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: HomeView(),
      mobile: HomeScreen(),
    );
  }
}
