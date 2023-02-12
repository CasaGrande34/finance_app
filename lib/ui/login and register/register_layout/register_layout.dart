import 'package:finance_app/ui/login%20and%20register/register_layout/mobile/screens/register_screen.dart';
import 'package:finance_app/ui/login%20and%20register/register_layout/web/views/register_view.dart';
import 'package:finance_app/utils/responsive.dart';
import 'package:flutter/material.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RegisterScreen(),
      tablet: RegisterView(),
      desktop: RegisterView(),
    );
  }
}
