import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegisterFormProvider extends ChangeNotifier {
  //boton del register y login para manejar la autenticacion
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  final GlobalKey<FormState> registerFormKey = GlobalKey();

  String name = '';
  String email = '';
  String password = '';

  validateForm() {
    if (registerFormKey.currentState!.validate()) {
      // buttonController.reset();
      Timer(const Duration(milliseconds: 2500), () {
        buttonController.success();
        Timer(const Duration(milliseconds: 1200), () {
          buttonController.reset();
          print('form valid');
          print('$name ==== $email ===== $password');
        });
      });
    } else {
      Timer(const Duration(milliseconds: 1000), () {
        buttonController.error();
        Timer(const Duration(milliseconds: 1700), () {
          buttonController.reset();
          print('form no valid');
        });
      });
    }
  }
}
