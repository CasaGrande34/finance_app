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
      Timer(const Duration(seconds: 10), () {
        // Timer(const Duration(milliseconds: 1200), () {
        //   buttonController.reset();
        // });
      });
      buttonController.success();
      return true;
    } else {
      Timer(const Duration(seconds: 3), () {
        buttonController.error();
        Timer(const Duration(milliseconds: 1700), () {
          buttonController.reset();
        });
      });
      return false;
    }
  }
}
