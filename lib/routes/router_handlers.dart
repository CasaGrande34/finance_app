import 'package:fluro/fluro.dart';
//file addresses
import 'package:finance_app/ui/views.dart';
import 'package:finance_app/ui/home_layout/home_layout.dart';

//Handlers
final Handler homeHandler = Handler(handlerFunc: ((context, parameters) {
  return const HomeLayout();
}));

final Handler loginHandler =
    Handler(handlerFunc: ((context, parameters) => const LoginView()));

final Handler registerHandler =
    Handler(handlerFunc: ((context, parameters) => const RegisterView()));

final Handler view404Handler =
    Handler(handlerFunc: ((context, parameters) => const View404()));

final Handler expensesHandler =
    Handler(handlerFunc: ((context, parameters) => const ExpensesView()));
