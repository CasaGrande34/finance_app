import 'package:flutter/material.dart';

import '../../styles_custom.dart';

class SelectionBorder extends StatelessWidget {
  final BorderRadius radius;
  final bool active;

  const SelectionBorder({
    Key? key,
    required this.radius,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: h * .05,
      width: 5,
      decoration: BoxDecoration(
          color: active ? Styles.amarilloOscuro : Colors.black,
          borderRadius: radius),
    );
  }
}
