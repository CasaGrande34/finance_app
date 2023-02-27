import 'dart:async';

import 'package:fluro/fluro.dart';
import 'package:finance_app/views.dart';
import '../home_layout/home_layout.dart';
import 'package:finance_app/login%20and%20register/login_layout/login_layout.dart';
import 'package:finance_app/login%20and%20register/register_layout/register_layout.dart';
import 'package:finance_app/splashs_layout/splash_layout.dart';

import 'package:provider/provider.dart';
import 'package:finance_app/providers/auth_provider.dart';

//Handlers
final Handler homeHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.status == AuthStatus.checking) {
      return const SplashLayout();
    }
    if (authProvider.status == AuthStatus.noAuthenticated) {
      return const LoginLayout();
    }
    Timer(const Duration(milliseconds: 4000), () {});
    return const HomeLayout();
  }),
);

final Handler loginHandler = Handler(
  handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.status == AuthStatus.checking) {
      return const SplashLayout();
    }
    if (authProvider.status == AuthStatus.noAuthenticated) {
      return const LoginLayout();
    }
    return const HomeLayout();
  }),
);

final Handler registerHandler = Handler(
  handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.status == AuthStatus.checking) {
      return const SplashLayout();
    }
    if (authProvider.status == AuthStatus.noAuthenticated) {
      return const RegisterLayout();
    }
    return const HomeLayout();
  }),
);

final Handler view404Handler =
    Handler(handlerFunc: ((context, parameters) => const View404()));

final Handler expensesHandler = Handler(
  handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.status == AuthStatus.checking) {
      return const SplashLayout();
    }
    if (authProvider.status == AuthStatus.noAuthenticated) {
      return const LoginLayout();
    }
    return const ExpensesView();
  }),
);
