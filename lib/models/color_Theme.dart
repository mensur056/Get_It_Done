import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorThemeData with ChangeNotifier {
  final ThemeData _redTheme = ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.red,
    scaffoldBackgroundColor: Colors.red,
    appBarTheme: AppBarTheme(color: Colors.red),
    primarySwatch: Colors.red,
    textTheme: TextTheme(
      subtitle1: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
    ),
  );

  final ThemeData _greenTheme = ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    appBarTheme: AppBarTheme(color: Colors.green),
    primarySwatch: Colors.green,
    textTheme: TextTheme(
      subtitle1: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
    ),
  );

  ThemeData _selectedThemeData = ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    appBarTheme: AppBarTheme(color: Colors.green),
    primarySwatch: Colors.green,
    textTheme: TextTheme(
      subtitle1: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
    ),
  );
  bool _isGreen = true;
  static SharedPreferences _sharedPref;

  void switchTheme(bool selected) {
    _isGreen = selected;
    saveThemeToSharedPref(selected);
    notifyListeners();
  }
  bool get isGreen=>_isGreen;

  ThemeData get selectedThemeData => _isGreen?_greenTheme : _redTheme;

  Future<void> createPrefObject() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  void saveThemeToSharedPref(bool value) {
    _sharedPref.setBool('ThemeData', value);
  }

  void loadThemeFromSharedPref() {
    _isGreen = _sharedPref.getBool('ThemeData') ?? true;
  }
}