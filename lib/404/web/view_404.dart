import 'package:flutter/material.dart';

//dependencies

//file addresses


class View404 extends StatelessWidget {
  
  const View404({super.key});

    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(
          child: Text(
            
            'Not found 404', 
            
            style: TextStyle(
                                  
              fontSize: 20,
          ),
        ),
     ),
   );
  }
} 