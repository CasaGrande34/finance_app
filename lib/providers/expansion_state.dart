import 'package:flutter/material.dart';

class ExpansionState with ChangeNotifier {
  bool _isExpanded = false;
  double width = 300;

  double get witdhMenor => width - 400.0;

  bool get isExpanded => _isExpanded;

  toggleExpansion() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
