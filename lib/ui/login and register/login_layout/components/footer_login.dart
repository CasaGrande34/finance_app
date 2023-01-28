import 'package:flutter/material.dart';

import '../../../../utils/colors_app.dart';

class FooterLogin extends StatelessWidget {
  const FooterLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h * .06,
      width: w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TweenAnimationBuilder(
              curve: Curves.easeInOutExpo,
              tween: Tween<double>(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 600),
              builder: (context, value, child) => Transform.translate(
                  offset: Offset(900 * value, 0.0),
                  child: const Text(
                    'Sobre nosotros',
                    style: TextStyle(color: ColorsApp.grisMedio),
                  ))),
          TweenAnimationBuilder(
              curve: Curves.easeInOutExpo,
              tween: Tween<double>(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 800),
              builder: (context, value, child) => Transform.translate(
                  offset: Offset(900 * value, 0.0),
                  child: const Text(
                    'Contacto',
                    style: TextStyle(color: ColorsApp.grisMedio),
                  ))),
          TweenAnimationBuilder(
              curve: Curves.easeInOutExpo,
              tween: Tween<double>(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 1000),
              builder: (context, value, child) => Transform.translate(
                  offset: Offset(900 * value, 0.0),
                  child: const Text(
                    'Politicas y privacidad',
                    style: TextStyle(color: ColorsApp.grisMedio),
                  ))),
          TweenAnimationBuilder(
              curve: Curves.easeInOutExpo,
              tween: Tween<double>(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 1200),
              builder: (context, value, child) => Transform.translate(
                  offset: Offset(900 * value, 0.0),
                  child: const Text(
                    'NewsLetter',
                    style: TextStyle(color: ColorsApp.grisMedio),
                  ))),
          TweenAnimationBuilder(
              curve: Curves.easeInOutExpo,
              tween: Tween<double>(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 1400),
              builder: (context, value, child) => Transform.translate(
                  offset: Offset(900 * value, 0.0),
                  child: const Text(
                    'Ayuda',
                    style: TextStyle(color: ColorsApp.grisMedio),
                  ))),
          TweenAnimationBuilder(
            curve: Curves.bounceInOut,
            tween: Tween<double>(begin: 1.0, end: 0.0),
            duration: const Duration(milliseconds: 1700),
            builder: (context, value, child) => Transform.translate(
              offset: Offset(900 * value, 0.0),
              child: const Text(
                'Trabaja con nosotros',
                style: TextStyle(color: ColorsApp.grisMedio),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
