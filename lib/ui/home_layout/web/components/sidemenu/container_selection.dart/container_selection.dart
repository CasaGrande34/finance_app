
import 'package:flutter/material.dart';

import '../../../../../../utils/colors_app.dart';

class SelectionBorder extends StatelessWidget {
  
  final BorderRadius radius;
  
  const SelectionBorder({
    Key? key,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return  Container(
      
      height: h * .05,
      width: w * .003,
      decoration: BoxDecoration(
        
        color: ColorsApp.selectionContainerBorder,
        borderRadius: radius
        
      ),
    );
  }
}
