//dependencies
import 'package:fluro/fluro.dart';
//file addresses
import 'router_handlers.dart';


class RoutesDelegateFluro {
  
  static final FluroRouter router = FluroRouter();
  
  static void configureRoutes() {
    
    router.define(
      '/', 
      handler: homeHandler,
      );
            
    router.define(
      '/login', 
      handler: loginHandler,
      );
      
    router.define(
      '/register', 
      handler: registerHandler,
      );
      
    router.define(
      '/expenses', 
      handler: expensesHandler,
      );
      
    
    router.notFoundHandler = view404Handler;
    
  }
  

}