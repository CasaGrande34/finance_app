import 'package:flutter/material.dart';

//dependencies
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import 'package:finance_app/models/visa/visa.dart';
import 'package:finance_app/utils/gradients_custom.dart';

class CardVisaTarjeta extends StatefulWidget {
  
  final Visa? visa;
  
  const CardVisaTarjeta({
    Key? key,
    this.visa,
  }) : super(key: key);

  @override
  State<CardVisaTarjeta> createState() => CardVisaTarjetaState();
}

class CardVisaTarjetaState extends State<CardVisaTarjeta> {
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      
      width: w / 3,
      height: h / 6,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
            
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradient1,
            
          )
      ),
      
      child: BodyCardVisa(widget: widget),
      
    );
  }
}

class BodyCardVisa extends StatefulWidget {
  
  final CardVisaTarjeta widget;
  
   const BodyCardVisa({
    Key? key,
    
    required this.widget,
    
  }) : super(key: key);

  @override
  State<BodyCardVisa> createState() => _BodyCardVisaState();
}

class _BodyCardVisaState extends State<BodyCardVisa> {
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        
        children: [
          
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              
              const Icon(FontAwesomeIcons.landmark, size: 30, color: Colors.amber,),
              const SizedBox(width: 20,),
              Text('Group Golmand Sachs', style: GoogleFonts.aBeeZee(),)
              
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              
              Text(widget.widget.visa?.nombreTarjeta?? '', style: const TextStyle(
                color: Colors.amber,
              ),),
              
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              
              Text(widget.widget.visa?.nombreDuenio?? '', style: GoogleFonts.bebasNeue(
                
                fontSize: 19,
                letterSpacing: 7,
                fontWeight: FontWeight.bold,
                
              ),
            ),      
          ],
                ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              
              Text(
                widget.widget.visa?.numeroTarjeta?? '', 
                style: GoogleFonts.rajdhani(
                  
                  fontSize: 20,
                  letterSpacing: 7,
                  wordSpacing: 7.0,
                  
                  
                ),
                
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 3,
              ),
              Text(
                
                '${widget.widget.visa?.fechaCreacion} - ${widget.widget.visa?.fechaVencimiento} ',
                style: GoogleFonts.rajdhani(
                  
                  fontSize: 18,

                  letterSpacing: 5,
                  
                ),
                
              ),
              const Spacer(),
              Image.asset( 
                
                'assets/cardVisa/visa_logo.png', 
                fit: BoxFit.contain, 
                height: 80,
                width: 80,
              
              ),
            ],
          ),
        ],
      ),
    );
  }
}

