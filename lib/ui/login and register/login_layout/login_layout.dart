import 'package:finance_app/ui/views.dart';
import 'package:finance_app/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'mobile/screens/login_screen.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: LoginView(),
      tablet: LoginView(),
      mobile: LoginScreen(),
    );
  }
}