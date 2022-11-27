import 'package:fluro/fluro.dart';
//file addresses
import 'package:finance_app/ui/views.dart';

//Handlers
final Handler homeHandler = Handler(
      handlerFunc: ((context, parameters) {
          return const HomeView();
        })
    );
    
  final Handler loginHandler = Handler(
      handlerFunc: (( context, parameters ) => const LoginView() )
    );
    
  final Handler registerHandler = Handler(
      handlerFunc: (( context, parameters ) => const CreateAccountView() )
    );
    
  final Handler view404Handler = Handler(
      handlerFunc: (( context, parameters ) => const View404() )
    );
    
  final Handler expensesHandler = Handler(
      handlerFunc: (( context, parameters ) => const ExpensesView() )
    );
  