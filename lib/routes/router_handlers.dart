import 'package:finance_app/services/local_storage.dart';
import 'package:finance_app/ui/login%20and%20register/login_layout/login_layout.dart';
import 'package:finance_app/ui/login%20and%20register/register_layout/register_layout.dart';
import 'package:fluro/fluro.dart';
//file addresses
import 'package:finance_app/ui/views.dart';
import 'package:finance_app/ui/home_layout/home_layout.dart';

//Handlers
final Handler homeHandler = Handler(handlerFunc: ((context, parameters) {
  print('TOKEN');
  print(LocalStorage.prefs.getString('token'));
  return const HomeLayout();
}));

final Handler loginHandler =
    Handler(handlerFunc: ((context, parameters) => const LoginLayout()));

final Handler registerHandler =
    Handler(handlerFunc: ((context, parameters) => const RegisterLayout()));

final Handler view404Handler =
    Handler(handlerFunc: ((context, parameters) => const View404()));

final Handler expensesHandler =
    Handler(handlerFunc: ((context, parameters) => const ExpensesView()));
