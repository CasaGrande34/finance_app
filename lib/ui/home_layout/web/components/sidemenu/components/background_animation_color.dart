
import 'dart:async';

import 'package:flutter/material.dart';

class BackgroundAnimationColor extends StatefulWidget {
  
  final Widget child;
  const BackgroundAnimationColor({
    
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<BackgroundAnimationColor> createState() => BackgroundAnimationColorState();
}

class BackgroundAnimationColorState extends State<BackgroundAnimationColor> with TickerProviderStateMixin {
  
  List<Color> colorList = const [
    
    Color(0xff000000),
    // Color(0xff150050),
    // Color(0xff3F0071),
    // Color(0xff610094),
    // Color(0xff2c0340),
    // Color.fromARGB(255, 27, 27, 27),
    // Color.fromARGB(255, 131, 61, 35),
    Color.fromARGB(255, 21, 21, 21),
    // Colors.black45
  ];
  
  int index = 0;
  Color bottomColor = const Color(0xff092646);
  Color topColor    = const Color(0xff000000);
  Alignment begin   = Alignment.topLeft;
  Alignment end     = Alignment.bottomRight;
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration( microseconds: 0 ), () { 
       setState(() {
         
       bottomColor = const Color(0xff33267c);
       });
      },
    );
  }
  
      
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      
      curve: Curves.linear,
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(() {
          index = index + 1;
          bottomColor = colorList[ index % colorList.length ];
          topColor = colorList[( index + 1 ) % colorList.length ];
        });
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          
          colors: [ bottomColor, topColor ],
          begin: begin,
          end: end,
        ),
      ),
      
     child: widget.child,
    );
  }
}