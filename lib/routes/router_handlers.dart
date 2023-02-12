import 'package:finance_app/providers/auth_provider.dart';
import 'package:finance_app/services/local_storage.dart';
import 'package:finance_app/ui/login%20and%20register/login_layout/login_layout.dart';
import 'package:finance_app/ui/login%20and%20register/register_layout/register_layout.dart';
import 'package:finance_app/ui/splashs_layout/splash_layout.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
//file addresses
import 'package:finance_app/ui/views.dart';
import 'package:finance_app/ui/home_layout/home_layout.dart';

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
