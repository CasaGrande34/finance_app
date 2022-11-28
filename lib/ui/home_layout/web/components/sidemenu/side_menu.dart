
import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../../utils/add_space.dart';
import '../../../../../utils/colors_app.dart';
import 'components/background_animation_color.dart';
import 'container_selection.dart/container_selection.dart';

class SideMenuCustom extends StatelessWidget {
  
  const SideMenuCustom({
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return BackgroundAnimationColor(
      
      child: SizedBox(  
      height: h,
      width : w * .07,
    
      child: const SideMenuBody(),
      
    ));
  }
}

class SideMenuBody extends StatelessWidget {
  
  const SideMenuBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        
    return Column(
      children: [
        /*	------------------------------------- */ 
        addVerticalSpace(20),
        const LogoCustom(),    
        addVerticalSpace(110),
        /*	------------------------------------- */     
        Column(
          children: [
            
              
              Row(
                children: const [
                  SelectionBorder(
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(20), 
                      bottomLeft: Radius.circular(20)
                      
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                      /*	------------------------------------- */ 
                      backgroundColor: ColorsApp.itemSelectionSideBar,  
                      child: Icon(FontAwesomeIcons.clipboard, color: Colors.black,)
                    
                    ),
                  Spacer(),
                  SelectionBorder(
                    radius: BorderRadius.only(
                      topRight: Radius.circular(20), 
                      bottomRight: Radius.circular(20)
                      
                    ),
                  ),
                  
                ],
              ),
              addVerticalSpace(70),
              const Icon(FontAwesomeIcons.book, color: ColorsApp.iconsColor1,),
              addVerticalSpace(70),
              const Icon(FontAwesomeIcons.chartBar, color: ColorsApp.iconsColor1,),
              addVerticalSpace(70),
              const Icon(FontAwesomeIcons.addressBook, color: ColorsApp.iconsColor1,),
              addVerticalSpace(130),
              const Icon(FontAwesomeIcons.tentArrowTurnLeft, color: ColorsApp.iconsColor1,)
             
          ],
        ),
        /*	------------------------------------- */ 
        
      ],
    );
  }
}

class LogoCustom extends StatelessWidget {
  
  const LogoCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height;     
    
    return Image.asset(
      
      'assets/logo/logo_moneda.png',
      height: h * .1,
      width : w,
      fit: BoxFit.contain,
      
    );
  }
}

