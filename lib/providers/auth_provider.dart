import 'package:finance_app/services/local_storage.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  login(String email, String password) {
    _token = 'akgdskgoadswe43523t.2343252tesgsgs.124fdsgvs';
    print('Almacenar JWT: $_token');
    LocalStorage.prefs.setString('token', _token!);
    //TODO: Navegar al dashboard

    notifyListeners();
  }
}
