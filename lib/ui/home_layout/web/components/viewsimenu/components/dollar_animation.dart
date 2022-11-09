import 'package:flutter/material.dart';

//dependencies

//file addresses

class DollarAnimation extends StatefulWidget {
  
  DollarAnimation({Key? key}) : super(key: key);

  @override
  State<DollarAnimation> createState() => _DollarAnimationState();
}

class _DollarAnimationState extends State<DollarAnimation> with TickerProviderStateMixin {
  
  double initialDirection = -100;
  double finalDirection = 0.0;
  
  
  getValueDirection() {
    
    
    
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      
      duration: const Duration(milliseconds: 1000),
      child: Transform.rotate(
                        
                angle: 56,
                child: Transform.translate(
                  offset: Offset(initialDirection, 0.0),
                  child: Image.asset(
                    
                      'assets/dolar/dolar1.png', 
                      fit: BoxFit.contain,
                    
                  ),
                ),
              ),
      
      
    );
  }
}