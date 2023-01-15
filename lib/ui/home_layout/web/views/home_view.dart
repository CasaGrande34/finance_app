import 'package:flutter/material.dart';

import '../../components/dashboard/dashboard.dart';
import '../../components/sidemenu/side_menu.dart';
import '../../components/view_expanded_menu/view_expanded_menu.dart';

//dependencies

//file addresses

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Row(
        children: const [SideMenu(), Expanded(child: DashboardCustom())],
      ),
    );
  }
}
