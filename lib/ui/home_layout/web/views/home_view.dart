import 'package:flutter/material.dart';

//dependencies

//file addresses
import '../../../../utils/sidemenu/side_menu.dart';
import '../../components/dashboard/dashboard.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Row(
        children: const [SideMenu(), Expanded(child: DashBoardHome())],
      ),
    );
  }
}
