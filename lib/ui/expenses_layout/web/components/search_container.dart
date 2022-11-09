import 'package:flutter/material.dart';


//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../utils/colors_app.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'package:finance_app/utils/add_space.dart';

class SearchContainer extends StatelessWidget {
  
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).primaryColor,
      ),
      width: w * .3,
      height: h,
      child: _SearchContent(),
      
    );
  }
}

class _SearchContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        addHorizontalSpace(padding3),
        Icon(FontAwesomeIcons.magnifyingGlassDollar, color: ColorsApp.colorSideMenuDark),
        addHorizontalSpace(padding3),
        Expanded(
          child: TextFormField(
            
            decoration: _buildInputDecoration(context),
            
          ),
        ),
        addHorizontalSpace(padding3)
        
      ],
      
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) => InputDecoration(
    
    
    label: const Text('Search..'),
    labelStyle: TextStyle(
      color: Theme.of(context).primaryColor
    ) 
    
  );
}


