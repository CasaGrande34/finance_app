import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginFormProvider extends ChangeNotifier {

  //boton del register y login para manejar la autenticacion
  RoundedLoadingButtonController buttonController = RoundedLoadingButtonController();
  final GlobalKey<FormState> formCreateKey = GlobalKey();
  String email = '';
  String password = '';
  
  validateForm() {
    if (formCreateKey.currentState!.validate()) {
      buttonController.reset();
      Timer(const Duration(milliseconds: 500), () {
      buttonController.success();
      buttonController.reset();
        
       });
    } else {
      buttonController.stop();
    }
  }  
}