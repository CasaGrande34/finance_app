
import 'package:flutter/material.dart';

//file addresses
import '../utils/colors_app.dart';

//?CUSTOM LIGHT THEME - METHOD
ThemeData customLightTheme() {
   
   final ThemeData lightTheme = ThemeData.light();

   return lightTheme.copyWith(

     textTheme: customTextTheme(lightTheme.textTheme),
     primaryColor: ColorsApp.primaryColorLight,
     
     indicatorColor: const Color(0xFF807A6B),
     scaffoldBackgroundColor: ColorsApp.backgroundLight,
     
     primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
     color: Colors.white,
     size: 20,
    ),
    
     iconTheme: lightTheme.iconTheme.copyWith(
     color: Colors.white,
    ),
    
     tabBarTheme: lightTheme.tabBarTheme.copyWith(
     labelColor: const Color(0xffce107c),
     unselectedLabelColor: Colors.grey,
    ),
    
     buttonTheme: lightTheme.buttonTheme.copyWith(buttonColor: Colors.red),
    ); 
 }

//?CUSTOM DARK THEME - METHOD
 ThemeData customDarkTheme() {

     final ThemeData darkTheme = ThemeData.dark();
    
     return darkTheme.copyWith(
    
       scaffoldBackgroundColor: ColorsApp.backgroundDark,
       primaryColor: const Color.fromARGB(255, 90, 90, 90),
       
       brightness: Brightness.dark,
       textTheme: customTextTheme(darkTheme.textTheme),   
       
       colorScheme: const ColorScheme.dark(),
    	 primaryIconTheme: darkTheme.primaryIconTheme.copyWith(
        
    	 color: Colors.green,
    	 size: 20,
    	),
      
     );
}

//? TEXT THEME - METHOD
  TextTheme customTextTheme(TextTheme base) {
       return base.copyWith(
        
         displayLarge: const TextStyle(
          fontSize: 57,
          
         ),
         displayMedium: const TextStyle(
          fontSize: 45,
          
         ),
         displaySmall: const TextStyle(
          fontSize: 36,
          
         ),
         headlineLarge: const TextStyle(
          fontSize: 32,
          
         ),
         headlineMedium: const TextStyle(
          fontSize: 28  ,
          
         ),
         headlineSmall: const TextStyle(
          fontSize: 24  ,
          
         ),
         titleLarge: const TextStyle(
          fontSize: 22  ,
          
         ),
         titleMedium: const TextStyle(
          fontSize: 16  ,
          
         ),
         titleSmall: const TextStyle(
          fontSize: 14  ,
          
         ),
         labelLarge: const TextStyle(
          fontSize: 14  ,
          
         ),
         labelMedium: const TextStyle(
          fontSize: 12  ,
          
         ),
         labelSmall: const TextStyle(
          fontSize: 11  ,
          
         ),
      );
    }
