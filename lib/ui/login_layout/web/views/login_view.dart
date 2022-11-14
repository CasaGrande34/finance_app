import 'package:flutter/material.dart';

import '../../../../utils/add_space.dart';

class LoginView extends StatefulWidget {
  
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  GlobalKey<FormState> formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            addVerticalSpace(10),
            Text('Login PageView'),
            TextFormField()
          ],
        ),
      ),
    );
  }
}