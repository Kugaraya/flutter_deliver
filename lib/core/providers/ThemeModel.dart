import 'package:flutter/material.dart';
import 'package:flutter_deliver/theme/themes.dart';

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;
  ThemeType themeType = ThemeType.Light;

  toggleTheme() {
    if (themeType == ThemeType.Dark) {
      currentTheme = lightTheme;
      themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
