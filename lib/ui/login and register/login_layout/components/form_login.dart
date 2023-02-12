import 'package:flutter/material.dart';

import 'container_form_login.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeOutQuart,
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) => Transform.scale(
        scale: 1.0 * value,
        child: const ContainerFormLogin(title: 'Inicia sesion'),
      ),
    );
  }
}
