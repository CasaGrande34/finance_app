import 'package:flutter/material.dart';

//file addresses
import '../colors_app.dart';


class CustomIconButton extends StatelessWidget {
  
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;
  final IconData icon;
  
  const CustomIconButton({
    
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.color = ColorsApp.primaryColorDark,
    this.isFilled = false,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   
    return OutlinedButton(
    
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateProperty.all(color),
        overlayColor: MaterialStateProperty.all(ColorsApp.selectionContainerBorder)
      ),
      onPressed: () => onPressed(),
      child: Row(
        
        children: [
          Icon( icon, color: Colors.white, size: 25, ),
          Text( text, style: const TextStyle(
            color: ColorsApp.itemSelectionSideBar,
            fontWeight: FontWeight.bold
          ), ),
          
        ],
      ),
      
    );
  }
}
