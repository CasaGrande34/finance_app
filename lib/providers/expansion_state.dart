import 'package:flutter/material.dart';

class ExpansionState with ChangeNotifier {
  bool _isExpanded = false;
  double _width = 300;

  double get isWidth => _width;
  set isWidth(double width) {
    _width = width;
  }

  bool get isExpanded => _isExpanded;

  void toggleExpansion() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
