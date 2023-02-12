import 'package:finance_app/routes/router_fluro.dart';
import 'package:finance_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/services/local_storage.dart';

enum AuthStatus { checking, authenticated, noAuthenticated }

class AuthProvider extends ChangeNotifier {
  String? _token;
  AuthStatus status = AuthStatus.checking;
  AuthProvider() {
    isAutenticated();
  }

  // -----------------------------------------------
  login(String email, String password) {
    _token = 'akgdskgoadswe43523t.2343252tesgsgs.124fdsgvs';
    print('Almacenar JWT: $_token');
    LocalStorage.prefs.setString('token', _token!);

    status = AuthStatus.authenticated;
    NavigationService.navigateReplace(RoutesDelegateFluro.homeR2);
    notifyListeners();
  }

// ------------------------------------------------
  Future<bool> isAutenticated() async {
    final storage = LocalStorage.prefs.getString('token');
    if (storage == null) {
      status = AuthStatus.noAuthenticated;
      return false;
    }
    //Ir al backend y comprobar que este JWT sea valido
    Future.delayed(const Duration(milliseconds: 2000));
    status = AuthStatus.authenticated;
    return true;
  }
}
