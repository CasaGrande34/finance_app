import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginFormProvider extends ChangeNotifier {

  //boton del register y login para manejar la autenticacion
  RoundedLoadingButtonController buttonController = RoundedLoadingButtonController();
  final GlobalKey<FormState> formCreateKey = GlobalKey();
  String name = '';
  String email = '';
  String password = '';
  
  validateForm() {
    if (formCreateKey.currentState!.validate()) {
      // buttonController.reset();
      Timer(const Duration(milliseconds: 5000), () {
      buttonController.success();
        Timer(const Duration(milliseconds: 1000), () {
          buttonController.reset();
          
        });
     });
    } else {
      // buttonController.stop();
    }
  }  
}