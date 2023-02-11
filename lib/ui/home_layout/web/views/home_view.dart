import 'package:flutter/material.dart';

//dependencies

//file addresses
import '../../../../utils/sidemenu/side_menu.dart';
import '../../components/dashboard/dashboard.dart';

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
