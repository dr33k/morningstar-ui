import 'package:flutter/material.dart';
import 'package:morningstar_ui/themes/dark_mode.dart';
import 'package:morningstar_ui/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeProvider(){
    _themeData = lightMode;
    notifyListeners();
  }

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;
  void set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    themeData = isDarkMode == true ? lightMode : darkMode;
  }
}