import 'package:flutter/material.dart';

import '../../components/dasboard/dashboard.dart';
import '../../components/sidemenu/side_menu.dart';
import '../../components/viewsimenu/viewsidemenu.dart';

//dependencies

//file addresses



class HomeView extends StatelessWidget {
  
  const HomeView({super.key});

    @override
    Widget build(BuildContext context) {
      
      double w = MediaQuery.of(context).size.width; 
      double h = MediaQuery.of(context).size.height; 
      
      return  Scaffold(
        body: Column(
          children: [
            Row(
              children: const [
                
                SideMenuCustom(),
                ViewSideMenu(),
                Expanded( child: DashboardCustom() )
              ],
            )
            
          ],
        )
   );
  }
}

