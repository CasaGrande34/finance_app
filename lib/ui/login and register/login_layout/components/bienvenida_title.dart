import 'package:flutter/material.dart';

import '../../../../../utils/fonts_custom.dart';

class BienvenidaTitle extends StatelessWidget {
  final String text;
  const BienvenidaTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeOutSine,
      duration: const Duration(milliseconds: 2000),
      tween: Tween<double>(begin: 1.0, end: 0.0),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0.0, -900 * value),
        child: Text(
          text,
          style: slabo.copyWith(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}
