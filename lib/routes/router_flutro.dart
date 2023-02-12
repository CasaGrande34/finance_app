//dependencies
import 'package:fluro/fluro.dart';
//file addresses
import 'router_handlers.dart';

class RoutesDelegateFluro {
  //Routes Strings
  static const loginR = '/auth/login';
  static const registerR = '/auth/register';
  static const homeR = '/';
  static const expensesR = '/expenses';
  static const route404 = '/404';

  //Objects
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      registerR,
      handler: registerHandler,
    );

    router.define(
      loginR,
      handler: loginHandler,
    );

    router.define(
      homeR,
      handler: homeHandler,
    );

    router.define(
      expensesR,
      handler: expensesHandler,
    );

    router.notFoundHandler = view404Handler;
  }
}
