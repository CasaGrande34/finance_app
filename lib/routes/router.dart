//dependencies
import 'package:fluro/fluro.dart';
//file addresses
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
    
  }
  
  //Handlers
  static final Handler _homeHandler = Handler(
      handlerFunc: ((context, parameters) => const HomeView())
    );
  static final Handler _loginHandler = Handler(
      handlerFunc: ((context, parameters) => const LoginView())
    );
  static final Handler _registerHandler = Handler(
      handlerFunc: ((context, parameters) => const CreateAccountView())
    );
  
}