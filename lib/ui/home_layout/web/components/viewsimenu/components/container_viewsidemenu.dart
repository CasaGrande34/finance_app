import 'package:flutter/material.dart';

//file addresses
import 'package:finance_app/utils/gradients_custom.dart';
import '../../../../../../utils/colors_app.dart';
import '../../../../../../utils/fonts_custom.dart';


class ContainerViewSideMenu extends StatefulWidget {
  
  
  String typeTransation;
  int dinero;
  
  ContainerViewSideMenu({
    Key? key,
    required this.typeTransation,
    required this.dinero,
  }) : super(key: key);

  @override
  State<ContainerViewSideMenu> createState() => _ContainerViewSideMenuState();
}

class _ContainerViewSideMenuState extends State<ContainerViewSideMenu> with TickerProviderStateMixin {
        
    double rightMovementF  = - 90.0; 
    double rightMovementT  = - 32.0;
    
    double bottomMovementT = - 35;
    double bottomMovementF = - 90;
    
    bool showDollar = false;
      
    @override
    Widget build(BuildContext context) {
      
      double h = MediaQuery.of(context).size.height;
      double w = MediaQuery.of(context).size.width; 
        
      
      return MouseRegion(
        onEnter: (event) {
          setState(() {
            showDollar = true;
          });
        },
        onExit: (event) {
          setState(() {
            showDollar = false;
          });
        },
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  
                    padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 25 ),  
                    height: h * .1,
                    width : w * .21,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(12),
                      // gradient: const LinearGradient(
                        
                      //   colors: gradientContainerSideMenu,
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight
                        
                      // ),
                      color: ColorsApp.colorSideMenuDark,  
                      boxShadow: [
                      BoxShadow(
                        
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text( 
                    
                    showDollar? widget.dinero.toString() : widget.typeTransation, 
                    style: slabo.copyWith(
                      
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    
                  ),
                ),
              ),
                
                //IMAGE BACKGROUND
                AnimatedPositioned(
                        
                        height: showDollar ? h * .2      : h * .03 ,
                        right: showDollar  ? rightMovementT  : rightMovementF,
                        bottom: showDollar ? bottomMovementT : bottomMovementF,
                        curve: Curves.easeInOutBack,
                        duration: const Duration( milliseconds: 400 ),
                        child: Transform.rotate(
                        
                          angle: 56,
                          child: Image.asset(
                            
                              'assets/dolar/dolar1.png', 
                              fit: BoxFit.contain,
                            
                          ),
                        ),
                      ),
                    ],
                  ),  
                ),
      );
            }
          }
    

