import 'package:finance_app/services/local_storage.dart';
import 'package:finance_app/services/navigation_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//dependencies
import 'package:provider/provider.dart';
// import 'package:url_strategy/url_strategy.dart';

//file addresses
import 'routes/router_fluro.dart';
import 'package:finance_app/services/theme_custom.dart';
import 'package:finance_app/providers/auth_provider.dart';
import 'package:finance_app/providers/expansion_state.dart';
import 'package:finance_app/providers/expenses_provider.dart';
import 'package:finance_app/providers/data_firestore_provider.dart';

void main() async {
  //Eliminacion del hastag en flutter web
  // setPathUrlStrategy();

  // await Firebase.initializeApp(
  //   options: const FirebaseOptions(

  //       apiKey: "AIzaSyCbCK9gcgv94RkOxzcQXUFJozgIX1yixXw",
  //       projectId: "expenses-appweb",
  //       messagingSenderId: "608720937361",
  //       appId: "1:608720937361:web:8c9c85e9813927f2f73a30"
  //     ),
  //   );
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();
  RoutesDelegateFluro.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ExpensesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DataFirestoreProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExpansionState(),
        ),
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => AuthProvider(),
        ),
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
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: widget.title,
      onGenerateRoute: RoutesDelegateFluro.router.generator,
      navigatorKey: NavigationService.navigationKey,
      theme: customDarkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
