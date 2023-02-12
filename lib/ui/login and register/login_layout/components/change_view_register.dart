import 'package:flutter/material.dart';

import '../../../../../utils/add_space.dart';
import '../../../../utils/styles_custom.dart';

class ChangeView extends StatelessWidget {
  final String text1;
  final String textCambio;
  final String route;
  const ChangeView({
    super.key,
    required this.text1,
    required this.textCambio,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return TweenAnimationBuilder(
      curve: Curves.easeOutCirc,
      duration: const Duration(milliseconds: 2500),
      tween: Tween<double>(begin: 1.0, end: 0),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(900 * value, 0),
        child: SizedBox(
          width: w * .3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: const TextStyle(color: Colors.white),
              ),
              addHorizontalSpace(6),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(route);
                },
                child: Text(
                  textCambio,
                  style: const TextStyle(
                      color: Styles.amarilloOscuro,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
