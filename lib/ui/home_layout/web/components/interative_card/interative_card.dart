import 'package:flutter/material.dart';

//dependencies
import 'package:google_fonts/google_fonts.dart';

//file addresses

class InteractiveCard extends StatefulWidget {
  
  final String? image;
  final String? title;
  final String? description;

  const InteractiveCard({
    
    Key? key,
    this.image,
    this.title,
    this.description,
    
  }) : super(key: key);

  @override
  State<InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<InteractiveCard> {
  
    double height = 300.0;
    double width = 100.0;
    
    @override
    Widget build(BuildContext context) {
      return MouseRegion(
        
        onEnter: (event) {
          
          setState(() {
            height = 340.0;
            width = 340.0;
          });
          
        },
        
        onExit: (event) {
          setState(() {
            height = 300.0;
            width = 100.0;
          });
          
        },
        
        child: AnimatedContainer(
          
          margin: const EdgeInsets.all(10),
          curve: Curves.easeInOut,
          height: height,
          width: width,
          duration: const Duration(milliseconds: 575),
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              
              fit: BoxFit.cover,
              image: AssetImage(widget.image!)
            
            )
          ), 
          
          child: Container(
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                
                colors: [
                  
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black
                  
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                
              ),
            ),
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                AnimatedRotation(
                  
                  turns: height == 300.0 ? -1 /4 : 0, 
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeInOut,
                  child: AnimatedPadding(
                    
                    padding: EdgeInsets.symmetric(vertical: height == 300.0 ? 20.0 : 0.0 ),  
                    duration: const Duration(milliseconds: 375),
                    child: Text(
                      
                      widget.title!,
                      style: GoogleFonts.montserrat(
                        
                        color: Colors.white,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w400,
                        
                      ),
                    ),
                  ),
                ),
                
                AnimatedContainer(
                  
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeInOut,
                  height: height == 300.0? 40.0 : 120.0,
                  width: 320.0,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(
                    top: height == 300.0? 100.0 : 20.0,
                  ),
                  
                  child: AnimatedOpacity(
                    
                    duration: const Duration(milliseconds: 375),
                    opacity: height == 300.0? 0.0 : 1.0, 
                    child: OverflowBox(
                      
                      maxHeight: 100.0,
                      maxWidth: 320.0,
                      minHeight: 80.0,
                      minWidth: 300.0,
                      child: Text(
                        
                          widget.description!,
                          style: GoogleFonts.quicksand(
                            
                          color: Colors.white,
                          fontSize: 13.0,
                          fontStyle: FontStyle.italic,
                          textStyle: const TextStyle(
                            overflow: TextOverflow.clip
                          ),
                        ),  
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),    
              ],
            ),
          ),
        ),
      );     
    }
  }