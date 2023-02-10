import 'package:flutter/material.dart';

//file addresses
import '../styles_custom.dart';

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
    this.color = Styles.amarilloClaro,
    this.isFilled = false,
    this.iconColor = Colors.white,
    this.textColor = Styles.amarilloClaro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(color),
          overlayColor: MaterialStateProperty.all(Styles.amarilloOscuro)),
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
