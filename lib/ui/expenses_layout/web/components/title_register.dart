import 'package:flutter/material.dart';

class TitleRegister extends StatefulWidget {
  
  const TitleRegister({
    super.key,
  });

  @override
  State<TitleRegister> createState() => _TitleRegisterState();
}

class _TitleRegisterState extends State<TitleRegister> {
  
   double rightMovementF  = - 90.0; 
    double rightMovementT  = - 32.0;
    
    double bottomMovementT = - 35;
    double bottomMovementF = - 90;
    
  
    double width = 100.0;
    
    bool showDollar = false;
  
  
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      
      width: w,
      height: h * .08,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        
      ),
      
      child: Text('Register Expenses', style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white
          ), ),
        
      
    
    );
              
    
    
  }
  
  void modificarWidthTitleRegister() async{
    
    Future.delayed(const Duration(milliseconds: 1000),);
    width = 300.0;
    
  }
}