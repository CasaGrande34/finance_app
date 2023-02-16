import 'package:finance_app/utils/sidemenu/side_menu.dart';
// import 'package:finance_app/utils/styles_custom.dart';
import 'package:flutter/material.dart';

import '../../widgets/dashboard/dashboard.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SideMenu(),
          Expanded(
            child: DashBoardHome(),
          ),
        ],
      ),
    );
  }
}
