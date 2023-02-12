import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import 'auth_provider.dart';

class LoginFormProvider extends ChangeNotifier {
  //boton del register y login para manejar la autenticacion
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  final GlobalKey<FormState> loginFormKey = GlobalKey();

  String email = '';
  String password = '';

  LoginFormProvider();

  bool validateForm() {
    if (loginFormKey.currentState!.validate()) {
      // buttonController.reset();
      Timer(const Duration(milliseconds: 2500), () {
        buttonController.success();
        Timer(const Duration(milliseconds: 1200), () {
          buttonController.reset();
        });
      });
      return true;
    } else {
      Timer(const Duration(milliseconds: 1000), () {
        buttonController.error();
        Timer(const Duration(milliseconds: 1700), () {
          buttonController.reset();
        });
      });
      return false;
    }
  }
}
