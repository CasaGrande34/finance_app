
import 'package:finance_app/utils/add_space.dart';
import 'package:flutter/material.dart';

//file addresses
import 'package:finance_app/utils/colors_app.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../utils/fonts_custom.dart';
import '../../../../../utils/months.dart';

class DashboardCustom extends StatelessWidget {
  
  const DashboardCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return SizedBox(
      
      height: h,
      width: w,
      child: Scaffold(
        
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(
            children: [
              
              Container(
                
                    width : w,
                    height: h * .06,
                    decoration: const BoxDecoration(
                      
                      color: Colors.white
              
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Icon(FontAwesomeIcons.circleChevronLeft, color: Colors.black,),
                        addHorizontalSpace(5)
                        
                      ],
                    ),
              ),
                
              DashboardCustomBody(),
              
            ],
          ),
        ),
      );
    }
  }
  
class DashboardCustomBody extends StatelessWidget {
  
  const DashboardCustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return SizedBox(
      
      height: h * .09,
      width: w,
      child: ListView.builder(
        
        
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: monthsOfYear.length,
        itemBuilder: ((context, index) {
          
          return Text(monthsOfYear[index], style: slabo,);
          
        }),
        
        
      ),
      
    );
  }
}