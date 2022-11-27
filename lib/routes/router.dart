//dependencies
import 'package:finance_app/ui/expenses_layout/web/views/expenses_view.dart';
import 'package:fluro/fluro.dart';
//file addresses
import 'package:finance_app/ui/404/web/views/view_404.dart';
import 'package:finance_app/ui/home_layout/web/views/home_view/home_view.dart';
import 'package:finance_app/ui/login%20and%20register/login_layout/web/views/login_view.dart';
import 'package:finance_app/ui/login%20and%20register/create_account_layout/web/views/create_account.dart';


class RoutesDelegateFluro {
  
  static final FluroRouter router = FluroRouter();
  
  static void configureRoutes() {
    
    router.define(
      '/', 
      handler: _homeHandler,
      );
            
    router.define(
      '/login', 
      handler: _loginHandler,
      );
      
    router.define(
      '/register', 
      handler: _registerHandler,
      );
      
    router.define(
      '/expenses', 
      handler: _expensesHandler,
      );
      
    
    router.notFoundHandler = _view404Handler;
    
  }
  
  //Handlers
  static final Handler _homeHandler = Handler(
      handlerFunc: ((context, parameters) {
          return const HomeView();
        })
    );
  static final Handler _loginHandler = Handler(
      handlerFunc: ((context, parameters) => const LoginView())
    );
  static final Handler _registerHandler = Handler(
      handlerFunc: ((context, parameters) => const CreateAccountView())
    );
  static final Handler _view404Handler = Handler(
      handlerFunc: ((context, parameters) => const View404())
    );
  static final Handler _expensesHandler = Handler(
      handlerFunc: ((context, parameters) => const ExpensesView())
    );
  
}