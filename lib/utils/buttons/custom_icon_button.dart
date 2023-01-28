import 'package:flutter/material.dart';

//file addresses
import '../../../utils/colors_app.dart';

class CustomIconButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color textColor;
  final Color color;
  final bool isFilled;
  final IconData icon;
  final Color iconColor;

  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.color = ColorsApp.amarilloClaro,
    this.isFilled = false,
    this.iconColor = Colors.white,
    this.textColor = ColorsApp.amarilloClaro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(color),
          overlayColor: MaterialStateProperty.all(ColorsApp.amarilloOscuro)),
      onPressed: () => onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
          Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ],
      ),
    );
  }
}
