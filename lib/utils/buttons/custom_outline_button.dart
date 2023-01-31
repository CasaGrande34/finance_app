import 'package:finance_app/utils/add_space.dart';
import 'package:flutter/material.dart';

import '../colors_app.dart';
import '../fonts_custom.dart';

class CustomOutlineButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;
  final IconData icon;

  const CustomOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.isFilled = false,
    this.color = ColorsApp.grisOscuro,
  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(color),
          overlayColor: MaterialStateProperty.all(ColorsApp.amarilloClaro)),
      onPressed: () => onPressed(),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          addHorizontalSpace(7),
          Text(
            text,
            style: roboto.copyWith(fontSize: 15),
          )
        ],
      ),
    );
  }
}
