import 'package:finance_app/ui/login%20and%20register/components/container_form_login.dart';
import 'package:finance_app/utils/styles_custom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: rrr),
            child: ContainerFormLogin(title: 'Inicia Sesion'),
          )
        ],
      ),
    );
  }
}
