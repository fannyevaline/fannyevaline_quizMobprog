import 'package:flutter/material.dart';
import '../themes/themes.dart';

class ThemeFontProvider with ChangeNotifier {
  // Tema dan Font Default
  ThemeData _currentTheme = lightTheme;
  String _currentFont = 'Courier';

  ThemeData get currentTheme => _currentTheme;
  String get currentFont => _currentFont;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void setFont(String font) {
    _currentFont = font;
    notifyListeners();
  }
}
