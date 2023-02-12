import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  static navigateTo(String routeName) {
    return navigationKey.currentState!.pushNamed(routeName);
  }

  static navigateReplace(String routeName) {
    return navigationKey.currentState!.pushReplacementNamed(routeName);
  }
}
