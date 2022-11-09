import 'package:flutter/material.dart';

//dependencies
import 'package:firebase_core/firebase_core.dart';
import 'package:finance_app/providers/expenses_provider.dart';
import 'package:finance_app/providers/data_firestore_provider.dart';
//file addresses
import 'package:provider/provider.dart';
import 'package:finance_app/services/theme_custom.dart';
import 'ui/expenses_layout/web/views/expenses_view.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      
        apiKey: "AIzaSyCbCK9gcgv94RkOxzcQXUFJozgIX1yixXw",
        projectId: "expenses-appweb",
        messagingSenderId: "608720937361",
        appId: "1:608720937361:web:8c9c85e9813927f2f73a30"
      
      ),
    );  
  runApp( const AppState() );
  
}

class AppState extends StatelessWidget {
  
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        
        ChangeNotifierProvider(create: (_) => ExpensesProvider()),
        ChangeNotifierProvider(create: (_) => DataFirestoreProvider()),
        
      ],
      
      child: const MyApp(),
      
    );
  }
}

class MyApp extends StatefulWidget {
  
  final title = 'Finance App';
  
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  
  @override
  Widget build( BuildContext context ) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: widget.title,
      home: const ExpensesView(),
      theme: customDarkTheme(),
      themeMode: ThemeMode.system,
      
    );
  }
}