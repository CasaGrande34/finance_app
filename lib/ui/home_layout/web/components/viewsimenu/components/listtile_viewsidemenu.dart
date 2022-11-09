import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../../../utils/add_space.dart';
import '../../../../../../utils/colors_app.dart';
import '../../../../../../utils/fonts_custom.dart';


class ListTileViewSideMenu extends StatefulWidget {
  
  IconData icon;
  int dinero;
  String chip1;
  String? chip2;
  
  ListTileViewSideMenu({
    Key? key,
    required this.icon,
    required this.dinero,
    required this.chip1,
    this.chip2,
  }) : super(key: key);

  @override
  State<ListTileViewSideMenu> createState() => _ListTileViewSideMenuState();
}

class _ListTileViewSideMenuState extends State<ListTileViewSideMenu> {
  
  Color colorContainerSelect = Colors.transparent;
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          colorContainerSelect = Colors.red.withOpacity(0.4);
        });
      },
      onExit: (event) {
        setState(() {
          colorContainerSelect = Colors.transparent;
        });
      },
      child: AnimatedContainer(
        
        duration: const Duration(
          milliseconds: 400,
        ),
        color: colorContainerSelect,
        child: ListTile(
          leading: CircleAvatar(
            
            radius: 19,
            backgroundColor: ColorsApp.itemSelectionSideBar,
            child: Icon( widget.icon , color: ColorsApp.colorSideMenuDark, size: 15,),
            
          ),
          
          title: Text(
            
            '\$ ${widget.dinero.toString()} ',
            style: anton.copyWith(
              fontSize: 14,
              color: Colors.redAccent,
              letterSpacing: 2.0,
            ),  
            
          ),
          subtitle: Row(
            
            children: [
              
              Chip(
                backgroundColor: ColorsApp.colorSideMenuDark,
                label: Text(
                
                  widget.chip1,
                  style: anton.copyWith(
                    fontSize: 10,
                    color: ColorsApp.itemSelectionSideBar,
                  ),  
                ),
              ),
              addHorizontalSpace(8),
              Chip(
                backgroundColor: ColorsApp.colorSideMenuDark,
                label: Text(
                  
                  widget.chip2 ?? '',
                  style: anton.copyWith(
                    fontSize: 10,
                    color: ColorsApp.itemSelectionSideBar,
                  ),  
                ),
              ),
              
            ],
          ),
          trailing: const Icon(FontAwesomeIcons.chevronRight, size: 17, color: ColorsApp.colorSideMenuDark,),
          onTap: () {},
          
        ),
      ),
    );
  }
}

