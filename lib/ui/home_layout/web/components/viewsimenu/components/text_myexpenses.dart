import 'package:flutter/material.dart';

//dependencies

//file addresses
import 'package:like_button/like_button.dart';
import 'package:finance_app/utils/add_space.dart';
import '../../../../../../utils/fonts_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyExpensesText extends StatefulWidget {
  
  final int likeCount = 999;
  
  const MyExpensesText({Key? key}) : super(key: key);

  @override
  State<MyExpensesText> createState() => _MyExpensesTextState();
}

class _MyExpensesTextState extends State<MyExpensesText> {
  
  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                
                'My Expenses', style: slabo.copyWith(
                
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.7)
                
              ),
             ),
             addHorizontalSpace(8),
             LikeButton(
              
              size: 11,
              circleColor: const CircleColor(
                start: Colors.black,
                end: Colors.red
              ),
              likeBuilder: (isLiked) {
                
                return Icon( 
                  
                    FontAwesomeIcons.sackDollar, 
                    color: isLiked? Colors.red : Colors.black, 
                    size: 16,
                  
                  );
              },    
              likeCount: widget.likeCount,         
              countBuilder: (likeCount, isLiked, text) {
                var color = isLiked? Colors.red : Colors.black;
                Widget result;
                if( likeCount == 0 ) {
                  result = Text(
                    
                    'hola',
                    style: TextStyle(
                      color: color
                    ),
                    
                    );
                } else result = Text(
                  
                  text,
                  style: TextStyle(color: color),
                  
                  
                  );
                  return result;
                  
                  
              },
              likeCountPadding: EdgeInsets.only(left: 5),
           )
        ],
      );
    }
  }