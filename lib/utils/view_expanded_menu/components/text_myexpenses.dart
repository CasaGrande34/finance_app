import 'package:flutter/material.dart';

//dependencies

//file addresses
import 'package:finance_app/utils/add_space.dart';
import '../../fonts_custom.dart';

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
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Las ultimas transaciones',
          style: slabo.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7)),
        ),
        addHorizontalSpace(5),
      ],
    );
  }
}
