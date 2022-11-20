import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  final GlobalKey<FormState> formCreateKey = GlobalKey();
  String email = '';
  String password = '';
  
  validateForm() {
    formCreateKey.currentState!.validate();
  }  
}