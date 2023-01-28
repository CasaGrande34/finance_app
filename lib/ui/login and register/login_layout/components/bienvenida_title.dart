import 'package:flutter/material.dart';

import '../../../../utils/fonts_custom.dart';

class BienvenidaTitle extends StatelessWidget {
  const BienvenidaTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeInOutCirc,
      duration: const Duration(milliseconds: 2000),
      tween: Tween<double>(begin: 1.0, end: 0.0),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0.0, -900 * value),
        child: Text('Que bueno verte nuevamente',
            style: slabo.copyWith(fontSize: 35, color: Colors.white)),
      ),
    );
  }
}
