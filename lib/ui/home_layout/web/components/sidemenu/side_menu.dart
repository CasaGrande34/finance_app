
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
    
    return SizedBox(  
    height: h,
    width : w > 700 ? 80 : 0,
    
    child: const SideMenuBody(),
    
    );
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
        const ContentSideBar()
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

class ContentSideBar extends StatefulWidget {
  
  const ContentSideBar({super.key});

  @override
  State<ContentSideBar> createState() => _ContentSideBarState();
}

class _ContentSideBarState extends State<ContentSideBar> {
  
  final List<bool> selected = [
    true, false, false, false,
  ];

  /* 
  recibimos un numero como parametro y vamos a indicar que si el indice es diferente de este numero dado entonces 
  le indicamos a la lista selected en la posicion del indice que sea falso pero si el numero dado es igual al indice entonces el valor 
  de la lista se transforma en true y se transforma en true entonces seguimos creando logica para nuestro header
   */
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if(i!=n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
                        
              SidebarItem(
                icon: FontAwesomeIcons.appStoreIos,
                active: selected[0],
                touched: () {
                  setState(() {
                    select(0);
                  });
                }, 
              ),
              addVerticalSpace(70),
              SidebarItem(
                icon: FontAwesomeIcons.galacticRepublic,
                active: selected[1],
                touched: () {
                  setState(() {
                    select(1);
                  });
                }, 
              ),
              addVerticalSpace(70),
              SidebarItem(
                icon: FontAwesomeIcons.nairaSign,
                active: selected[2],
                touched: () {
                  setState(() {
                    select(2);
                  });
                }, 
              ),
              addVerticalSpace(70),
              SidebarItem(
                icon: FontAwesomeIcons.rankingStar,
                active: selected[3],
                touched: () {
                  setState(() {
                    select(3);
                  });
                }, 
              ),
              addVerticalSpace(70),
             
          ],
        );
  }
}

class SidebarItem extends StatefulWidget {
  final Function touched;
  final bool active;
  final IconData icon;
  

  const SidebarItem({super.key, required this.touched, required this.active, required this.icon});

  @override
  State<SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<SidebarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.touched(),
      child: Row(
        children: [
          SelectionBorder(
            active: widget.active,
            radius: const BorderRadius.only(
              topLeft: Radius.circular(20), 
              bottomLeft: Radius.circular(20)
              
            ),
          ),
          const Spacer(),
          CircleAvatar(
              /*	------------------------------------- */ 
              backgroundColor: widget.active? ColorsApp.itemSelectionSideBar : Colors.transparent,  
              child: Icon(
                widget.icon, 
                color: widget.active? Colors.black : Colors.grey, 
                size: 18,
              ),
            ),
          const Spacer(),
          SelectionBorder(
            active: widget.active,
            radius: const BorderRadius.only(
              topRight: Radius.circular(20), 
              bottomRight: Radius.circular(20)
              
            ),
          ),
          
        ],
      ),
    ); 
  }
}