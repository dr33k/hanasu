import 'package:hanasu/theme/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = light;

  ThemeData get currentTheme => _currentTheme;
  set currentTheme(ThemeData value) {
    _currentTheme = value;
    notifyListeners();
  }

  void toggleTheme(){
    if (currentTheme == light) {
      currentTheme = dark;
    } else {
      currentTheme = light;
    }
  }
}
