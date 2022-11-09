import 'package:finance_app/ui/expenses_layout/web/components/search_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import '../../../../utils/padding_custom.dart';
import '../../../home_layout/web/components/sidemenu/components/background_animation_color.dart';
import 'icon_notification_custom.dart';

class NavBarCustom extends StatelessWidget {
  
  const NavBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return BackgroundAnimationColor(
      child: SizedBox(
        
        width: w  ,
        height: h * .09 ,
        child: _NavBarCustomContent(),
        
      ),
    );
  }
}

class _NavBarCustomContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        addHorizontalSpace(padding3),
        Icon(FontAwesomeIcons.bars, color: Theme.of(context).primaryColor,),
        addHorizontalSpace(20),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: padding3),
          child: SearchContainer(),
        ),
        const Spacer(),
        const IconNotificationCustom(),
        addHorizontalSpace(padding5),
        const CircleAvatar(),
        addHorizontalSpace(padding4)
        
      ],
    );
  }
}


